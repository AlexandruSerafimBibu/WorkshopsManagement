using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

using WorkshopsManagement.Models;
using WorkshopsManagement.Services;

namespace WorkshopsManagement.Views
{
    /// <summary>
    /// Interaction logic for Comments.xaml
    /// </summary>
    public partial class Comments : Page
    {
        MainWindow mainWindow;
        UserService serviceMethods;
        Account account;
        Question question;
        public Comments()
        {
            InitializeComponent();
        }

        public Comments(UserService serviceMethods, Account account, MainWindow mainWindow, Question question)
        {
            this.mainWindow = mainWindow;
            this.account = account;
            this.serviceMethods = serviceMethods;
            this.question = question;
            InitializeComponent();
            commentTags.ItemsSource = question.getAnswerList();
        }

        private void backToForum(object sender, RoutedEventArgs e)
        {
            mainWindow.MainWin.Content = new Forum(mainWindow, serviceMethods, account);
        }

        //private int getFirstAvailableId(List<Answer> answers)
        //{
        //    int[] countIds = new int[100];
        //    countIds[0] = 1;

        //    foreach (Answer answer in answers) countIds[answer.id]++;

        //    int i = 0;
        //    while (i < countIds.Length)
        //    {
        //        if (countIds[i] == 0) return i;
        //        i++;
        //    }
        //    return answers.Count;
        //}


        private void addAnswer(object sender, RoutedEventArgs e)
        {
            Answer answer = new Answer(textBox_Answer.Text, account.username, question.questionId);
            serviceMethods.addAnswer(answer);
            foreach (Question question in serviceMethods.getQuestions())
                if (question.questionId == this.question.questionId)
                {
                    commentTags.ClearValue(ItemsControl.ItemsSourceProperty);
                    commentTags.ItemsSource = question.getAnswerList();
                    break;
                }
           
            textBox_Answer.Clear();
        }

        private void deleteAnswer(object sender, RoutedEventArgs e)
        {
            if (account.username.Equals("Admin"))
            {
                // serviceMethods.deleteAnswer(question.getAnswerList()[commentTags.SelectedIndex]);
                foreach(Answer answer in question.getAnswerList())
                {
                    if(answer.name.Equals(commentTags.SelectedItem.ToString()))
                    {
                        serviceMethods.deleteAnswer(answer);
                        question.getAnswerList().Remove(answer);
                        commentTags.ClearValue(ItemsControl.ItemsSourceProperty);
                        commentTags.ItemsSource = question.getAnswerList();
                        break;
                    }
                }
            }
        }
    }
}
