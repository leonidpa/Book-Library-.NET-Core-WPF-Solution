﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Book_Library_.NET_Core_WPF_App
{
    public class AppUser
    {
        private AppUser() { }

        private AppUser(string login, string password, int accountId) 
        {
            Login = login;
            Password = password;
            AccountId = accountId;
        }

        private static AppUser _instance;

        public static AppUser GetInstance()
        {
            if(_instance == null)
            {
                _instance = new AppUser();
            }
            return _instance;
        }

        public static void SetInstance(string login, string password, int accountId)
        {
            _instance = new AppUser(login, password, accountId);
            return;
        }

        public string Login { get; }

        public string Password { get; }

        public int  AccountId { get; }
    }
}
