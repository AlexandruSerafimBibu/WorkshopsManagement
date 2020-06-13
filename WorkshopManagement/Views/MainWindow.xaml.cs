
using System.Windows;

using WorkshopsManagement.Models;
using WorkshopsManagement.Services;
using WorkshopsManagement.Views;

namespace WorkshopsManagement
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        UserService serviceMethods;
        Account account;
        Login login;
        public MainWindow(Login login,UserService serviceMethods,Account account)
        {
            this.account = account;
            this.login = login;
            this.serviceMethods = serviceMethods;
            InitializeComponent();
            label_UserName.Content = account.username;
            if (!account.username.Equals("Admin"))
            {
                adminButton.IsEnabled = false;
            }
            MainWin.Content = new Home();
        }

        private void HomeButton(object sender, RoutedEventArgs e)
        {
            MainWin.Content = new Home();
        }

        private void ContactButton(object sender, RoutedEventArgs e)
        {
            MainWin.Content = new Contact();
        }

        private void ExitButton(object sender, RoutedEventArgs e)
        {
            Close();
            login.Close();
        }

        private void GoToLogInFromWindow(object sender, RoutedEventArgs e)
        {
            Close();
            login.Show();
        }

        private void WorkshopButton(object sender, RoutedEventArgs e)
        {
            MainWin.Content = new Workshop(serviceMethods);
        }

        private void ForumButton(object sender, RoutedEventArgs e)
        {
            MainWin.Content = new Forum(this,serviceMethods,account);
        }

        private void AccountsButton(object sender, RoutedEventArgs e)
        {
            MainWin.Content = new Accounts(serviceMethods,account);
        }

        private void GoToAdmin(object sender, RoutedEventArgs e)
        {
            MainWin.Content = new Admin(serviceMethods,this);
        }
        public void GoToMethodAdmin(object sender, RoutedEventArgs e)
        {
            GoToAdmin(sender, e);
        }
    }
}
