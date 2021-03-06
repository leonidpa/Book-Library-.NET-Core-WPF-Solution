﻿using Book_Library_.NET_Core_WPF_App.ViewModels;
using System;
using System.Collections.Generic;
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
    /// Interaction logic for UserCabinetPage.xaml
    /// </summary>
    public partial class UserCabinetPage : BookLibraryPage
    {
        private Page _previousPage;

        public UserCabinetPage(Page previousPage)
        {
            InitializeComponent();

            _previousPage = previousPage;

            btnBackward.Background = PagesPropertiesProvider.BackwardImage;

            btnBackward.Click += btnBackward_Click;
            btnChangePassword.Click += btnChangePassword_Click;
            btnDeleteAccount.Click += btnDeleteAccount_Click;

            DataContext = new UserCabinetVM();
        }

        private void btnBackward_Click(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                NavigationService.Navigate(_previousPage);
            });
        }

        private void btnChangePassword_Click(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                NavigationService.Navigate(new ChangePasswordPage(this));
            });
        }

        private void btnDeleteAccount_Click(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                NavigationService.Navigate(new DeleteAccountPage(this));
            });
        }
    }
}
