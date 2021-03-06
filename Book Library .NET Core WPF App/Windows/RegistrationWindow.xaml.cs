﻿using Book_Library_.NET_Core_WPF_App.ExtensionMethods;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Book_Library_.NET_Core_WPF_App.Windows
{
    /// <summary>
    /// Interaction logic for RegistrationWindow.xaml
    /// </summary>
    public partial class RegistrationWindow : BookLibraryWindow
    {
        private Window _loginWindow;

        public RegistrationWindow(Window loginWindow)
        {
            InitializeComponent();
            SetupWindow();

            _loginWindow = loginWindow;

            btnRegister.Click += btnRegister_Click;

            tbLogin.KeyUp += TextBox_KeyUp;
            tbFirstName.KeyUp += TextBox_KeyUp;
            tbLastName.KeyUp += TextBox_KeyUp;
            tbEmail.KeyUp += TextBox_KeyUp;
            pbPassword.KeyUp += TextBox_KeyUp;
            pbConfirmPassword.KeyUp += TextBox_KeyUp;

            this.Closing += RegistrationWindow_Closing;
        }

        private void SetupWindow()
        {
            this.CenterWindowOnScreen();
            Background = WindowsPropertiesProvider.LoginBackground;
            Icon = WindowsPropertiesProvider.DefaultIcon;
        }

        private void Register()
        {
            if (!ValidateEmptyInputData())
            {
                Message.Content = "Empty input is not correct";
                RegistrationGrid.Background = RegistrationGridAlertBackground;
                return;
            }
            if (!ConfirmPasswordInputData())
            {
                Message.Content = "Confirm password not correct";
                RegistrationGrid.Background = RegistrationGridAlertBackground;
                return;
            }
            if (DataStore.Account.Register(tbLogin.Text, pbPassword.Password, tbFirstName.Text, tbLastName.Text, tbEmail.Text) <= 0)
            {
                Message.Content = "Registration data base error";
                RegistrationGrid.Background = RegistrationGridAlertBackground;
                return;
            }
            this.Close();
        }

        private void btnRegister_Click(object sender, RoutedEventArgs e)
        {
            TryCatchMessageTask(() =>
            {
                Register();
            });
        }

        private void RegistrationWindow_Closing(object sender, CancelEventArgs e)
        {
            _loginWindow.Show();
        }

        private void TextBox_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                btnRegister_Click(sender, e);
            }
            e.Handled = true;
        }

        private bool ValidateEmptyInputData()
        {
            if (
                string.IsNullOrEmpty(tbLogin.Text)
                ||
                string.IsNullOrEmpty(pbPassword.Password)
                ||
                string.IsNullOrEmpty(pbConfirmPassword.Password)
                ||
                string.IsNullOrEmpty(tbFirstName.Text)
                ||
                string.IsNullOrEmpty(tbLastName.Text)
                ||
                string.IsNullOrEmpty(tbEmail.Text)
                )
            {
                return false;
            }
            return true;
        }

        private bool ConfirmPasswordInputData()
        {
            if (string.Compare(pbPassword.Password, pbConfirmPassword.Password) == 0)
            {
                return true;
            }
            return false;
        }

        private LinearGradientBrush RegistrationGridAlertBackground
        {
            get
            {
                var lgBackground = new LinearGradientBrush();
                lgBackground.EndPoint = new Point(0.5, 1);
                lgBackground.Opacity = 0.25;
                lgBackground.StartPoint = new Point(0.5, 0);
                lgBackground.GradientStops.Add(
                    new GradientStop(Colors.Black, 0));
                lgBackground.GradientStops.Add(
                    new GradientStop(Colors.Red, 1));
                return lgBackground;
            }
        }

    }
}
