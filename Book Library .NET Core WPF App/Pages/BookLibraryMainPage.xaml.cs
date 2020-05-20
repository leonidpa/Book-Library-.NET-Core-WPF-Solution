﻿using Book_Library_.NET_Core_WPF_App.Models.PagesModels;
using Book_Library_.NET_Core_WPF_App.ViewModels;
using Book_Library_.NET_Core_WPF_App.Windows;
using Book_Library_EF_Core_Proxy_Class_Library.Models.Book.LibraryInterfaceBook;
using Book_Library_EF_Core_Proxy_Class_Library.Proxy;
using Microsoft.EntityFrameworkCore.Internal;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Book_Library_.NET_Core_WPF_App.Pages
{
    /// <summary>
    /// Interaction logic for BookLibraryMainPage.xaml
    /// </summary>
    public partial class BookLibraryMainPage : BookLibraryPage
    {
        public BookLibraryMainPage()
        {
            InitializeComponent();

            SetupPage();

            this.Loaded += OnLoad;

            BooksGrid.SelectionChanged += Datagrid_Row_Click;
            tbSearch.TextChanged += Search_Text_Changed;
            btnUser.Click += btnUser_Click;
            btnAddBook.Click += btnAddBook_Click;
            btnEditBook.Click += btnEditBook_Click;
            btnDeleteBook.Click += btnDeleteBook_Click;
        }

        private void SetupPage()
        {
            pageModel = new MainPageVM();

            DataContext = pageModel;
        }

        public MainPageVM pageModel { get; set; }

        protected void OnLoad(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                pageModel.UserName = AppUser.GetInstance().Login;
                var books = dbBookLibraryProxy.Books.GetBooks();
                pageModel.Books = books;
            });
        }

        private void btnUser_Click(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                NavigationService.Navigate(new UserCabinetPage(this));
            });
        }

        private void btnAddBook_Click(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                NavigationService.Navigate(new AddBookPage(this));
            });
        }

        private void btnEditBook_Click(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                var book = BooksGrid.SelectedItem as DisplayBook;
                if (book == null) return;
                var editBook = new UpdateBookModel()
                {
                    Name = book.Name,
                    Authors = book.Authors,
                    Year = book.Year,
                    Id = book.ID
                };
                NavigationService.Navigate(new EditBookPage(this, editBook));

            });
        }

        private void btnDeleteBook_Click(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                var messageBoxResult = System.Windows.MessageBox.Show("Are you sure?", "Delete Confirmation", MessageBoxButton.YesNo);
                if (messageBoxResult == MessageBoxResult.Yes)
                {
                    var booksGridEnumerator = BooksGrid.SelectedItems.GetEnumerator();
                    while (booksGridEnumerator.MoveNext())
                    {
                        var bookId = (booksGridEnumerator.Current as DisplayBook)?.ID;
                        if (bookId != null)
                        {
                            dbBookLibraryProxy.Books.DeleteBook((int)bookId);
                        }
                    }
                    var books = dbBookLibraryProxy.Books.GetBooks();
                    pageModel.Books = books;
                }
            });
        }

        private void Datagrid_Row_Click(object sender, SelectionChangedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                if (btnEditBook.IsEnabled == false || btnDeleteBook.IsEnabled == false)
                {
                    btnEditBook.IsEnabled = true;
                    btnDeleteBook.IsEnabled = true;
                }
                if (BooksGrid.SelectedItems.Count == 0)
                {
                    btnEditBook.IsEnabled = false;
                    btnDeleteBook.IsEnabled = false;
                }
                if (BooksGrid.SelectedItems.Count > 1)
                {
                    btnEditBook.IsEnabled = false;
                }
            });
        }

        private void Search_Text_Changed(object sender, TextChangedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                var dataGridContext = DataContext as MainPageVM;
                if (dataGridContext != null)
                {
                    dataGridContext.Books = dbBookLibraryProxy.Books.GetBooks();
                    var searchBooksResult = dataGridContext.Books.Where(i =>
                        i.Name.ToString().ToLower().Contains(tbSearch.Text.ToLower())
                        ||
                        i.Authors.ToString().ToLower().Contains(tbSearch.Text.ToLower())
                        ||
                        i.Year.ToString("M/d/yyyy h:mm:ss tt", CultureInfo.InvariantCulture).Contains(tbSearch.Text)
                        ||
                        i.Availability.ToString().ToLower().Contains(tbSearch.Text.ToLower())
                        ||
                        i.ID.ToString().ToLower().Contains(tbSearch.Text.ToLower())
                    ).OrderBy(a => a.Name).ToList();
                    dataGridContext.Books = searchBooksResult;
                }
            });
        }
    }
}