using System;
using System.Collections.Generic;

using System.Windows.Controls;

using WorkshopsManagement.Models;
using WorkshopsManagement.Services;

namespace WorkshopsManagement
{
    /// <summary>
    /// Interaction logic for Workshop.xaml
    /// </summary>
    public partial class Workshop : Page
    {
        UserService serviceMethods;
        public Workshop(UserService serviceMethods)
        {
            this.serviceMethods = serviceMethods;
            InitializeComponent();
            foreach (Workshops workshop in serviceMethods.getWorkshops()) listBox1.Items.Add(workshop);
            
        }

        

        
    }
}
