﻿using System;
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

namespace Book_Library_.NET_Core_WPF_App.Controls
{
    public partial class LoadingPanel
    {
        public static readonly DependencyProperty IsLoadingProperty =
            DependencyProperty.Register("IsLoading", typeof(bool), typeof(LoadingPanel), new UIPropertyMetadata(false));

        public static readonly DependencyProperty MessageProperty =
            DependencyProperty.Register("Message", typeof(string), typeof(LoadingPanel), new UIPropertyMetadata("Loading..."));

        public static readonly DependencyProperty SubMessageProperty =
            DependencyProperty.Register("SubMessage", typeof(string), typeof(LoadingPanel), new UIPropertyMetadata(string.Empty));

        public static readonly DependencyProperty ClosePanelCommandProperty =
            DependencyProperty.Register("ClosePanelCommand", typeof(ICommand), typeof(LoadingPanel));

        public LoadingPanel()
        {
            InitializeComponent();
        }

        public bool IsLoading
        {
            get { return (bool)GetValue(IsLoadingProperty); }
            set { SetValue(IsLoadingProperty, value); }
        }

        public string Message
        {
            get { return (string)GetValue(MessageProperty); }
            set { SetValue(MessageProperty, value); }
        }

        public string SubMessage
        {
            get { return (string)GetValue(SubMessageProperty); }
            set { SetValue(SubMessageProperty, value); }
        }

        public ICommand ClosePanelCommand
        {
            get { return (ICommand)GetValue(ClosePanelCommandProperty); }
            set { SetValue(ClosePanelCommandProperty, value); }
        }

        private void OnCloseClick(object sender, RoutedEventArgs e)
        {
            if (ClosePanelCommand != null)
            {
                ClosePanelCommand.Execute(null);
            }
        }
    }
}
