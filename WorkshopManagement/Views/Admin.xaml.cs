using System;
using System.Windows;
using System.Windows.Controls;
using WorkshopsManagement.Models;
using WorkshopsManagement.Services;

namespace WorkshopsManagement.Views
{
    /// <summary>
    /// Interaction logic for Admin.xaml
    /// </summary>
    public partial class Admin : Page
    {
        UserService serviceMethods;
        MainWindow mainWindow;
        public Admin(UserService serviceMethods,MainWindow mainWindow)
        {
            this.mainWindow = mainWindow;
            this.serviceMethods = serviceMethods;
            InitializeComponent();
            refreshList();
        }


        //public class Workshop
        //{
        //    public string workshopId { get; set; }
        //    public string workshopName { get; set; }
        //    public string workshopOrganizer { get; set; }
        //    public string workshopDescription { get; set; }
        //    public string workshopDate { get; set; }
        //}

        private void refreshList()
        {
            
            WorkshopDataGrid.Items.Clear();
            foreach(Workshops workshop in serviceMethods.getWorkshops())
            {
                WorkshopDataGrid.Items.Add(workshop);
            }
        }

        private void AddWorkshop_Clicked(object sender, RoutedEventArgs e)
        {
            Workshops tempWorkhop = new Workshops(TextBoxName.Text, TextBoxOrganizer.Text, Convert.ToDateTime(TextBoxDate.Text), TextBoxDescription.Text, "Image/Path");
            serviceMethods.addWorkshop(tempWorkhop);
            WorkshopDataGrid.Items.Add(tempWorkhop);
            //Workshop tempWorkshop = new Workshop();
            //tempWorkshop.workshopName = TextBoxName.Text;
            //tempWorkshop.workshopOrganizer = TextBoxOrganizer.Text;
            //tempWorkshop.workshopDescription = TextBoxDescription.Text;
            //tempWorkshop.workshopDate = TextBoxDate.Text;

            //WorkshopDataGrid.Items.Add(tempWorkshop);
        }

        private void deleteWorkshop(object sender, RoutedEventArgs e)
        {
            Workshops tempWorkshop = new Workshops();
            foreach (Workshops workshop in serviceMethods.getWorkshops())
            {
                
                if (workshop.name.Equals(TextBoxName.Text))
                {
                    //serviceMethods.getWorkshops().Remove(workshop);
                    serviceMethods.deleteWorkshop(workshop);
                    tempWorkshop = workshop;
                    refreshList();
                    break;
                }
            }
            WorkshopDataGrid.Items.Remove(tempWorkshop);
        }

        private void editWorkshop(object sender, RoutedEventArgs e)
        {
            Workshops tempWorkshop = new Workshops();
            serviceMethods.updateWorkshop(new Workshops(TextBoxName.Text, TextBoxOrganizer.Text, Convert.ToDateTime(TextBoxDate.Text), TextBoxDescription.Text, "workshopIcon.png"));
       
            foreach (Workshops workshop in serviceMethods.getWorkshops())
            {
                if (workshop.name.Equals(TextBoxName.Text))
                {
                    WorkshopDataGrid.Items.Remove(workshop);
                    tempWorkshop = workshop;
                    break;
                }
            }
        }


        //private void AddNewWorkshop_Clicked(object sender, RoutedEventArgs e)
        //{
        //    AddNewWorkshop.Visibility = Visibility.Visible;
        //    Workshop tempWorkshop = new Workshop();
        //    tempWorkshop.workshopName = TextBoxName.Text;
        //    tempWorkshop.workshopOrganizer = TextBoxOrganizer.Text;
        //    tempWorkshop.workshopDescription = TextBoxDescription.Text;
        //    tempWorkshop.workshopDate = TextBoxDate.Text;

        //    WorkshopDataGrid.Items.Add(tempWorkshop);

        //    }
        //}
    }
}