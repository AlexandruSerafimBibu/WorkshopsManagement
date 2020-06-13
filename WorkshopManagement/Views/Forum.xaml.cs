using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using WorkshopsManagement.Models;
using WorkshopsManagement.Services;
using WorkshopsManagement.Views;

namespace WorkshopsManagement
{
    /// <summary>
    /// Interaction logic for Forum.xaml
    /// </summary>
    public partial class Forum : Page
    {
        MainWindow mainWindow;
        UserService serviceMethods;
        Account account;
        public Forum(MainWindow mainWindow, UserService serviceMethods, Account account)
        {
            this.serviceMethods = serviceMethods;
            this.account = account;
            this.mainWindow = mainWindow;
            InitializeComponent();
            forumTags.ItemsSource = serviceMethods.getQuestions();
        }

        private int getFirstAvailableId(List<Question> questions)
        {
            int[] countIds = new int[100];
            countIds[0] = 1;

            foreach (Question question in questions) countIds[question.getId()]++;

            int i = 0;
            while (i < countIds.Length)
            {
                if (countIds[i] == 0) return i;
                i++;
            }
            return questions.Count;
        }

        private int getFirstAvailableQuestionId(List<Question> questions)
        {
            int[] countIds = new int[100];
            countIds[0] = 1;

            foreach (Question question in questions) countIds[question.questionId]++;

            int i = 0;
            while (i < countIds.Length)
            {
                if (countIds[i] == 0) return i;
                i++;
            }
            return questions.Count;
        }

        private void selectare(object sender, RoutedEventArgs e)
        {
            foreach(Question question in serviceMethods.getQuestions())
            {
                if(question.Equals(forumTags.SelectedItem))
                {
                    mainWindow.MainWin.Content = new Comments(serviceMethods, account, mainWindow, question);
                    return;
                }
            }
            
        }

        private void addQuestion(object sender, RoutedEventArgs e)
        {
            Question question = new Question(getFirstAvailableId(serviceMethods.getQuestions()), textBox_Question.Text, account.username,
                getFirstAvailableQuestionId(serviceMethods.getQuestions()));
            serviceMethods.addQuestion(question);
            forumTags.ClearValue(ItemsControl.ItemsSourceProperty);
            forumTags.ItemsSource = serviceMethods.getQuestions();
            textBox_Question.Clear();
        }

        private void deleteQuestion(object sender, RoutedEventArgs e)
        {
            if (account.username.Equals("Admin"))
            {
                foreach(Question forum in serviceMethods.getQuestions())
                {
                    if(forum.Equals(forumTags.SelectedItem))
                    {
                        serviceMethods.deleteQuestion(forum);
                        forumTags.ClearValue(ItemsControl.ItemsSourceProperty);
                        forumTags.ItemsSource = serviceMethods.getQuestions();

                    }
                }
            }
        }
    }
}
