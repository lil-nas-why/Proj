using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
namespace WpfApp3
{
    /// <summary>
    /// Логика взаимодействия для AgentPage.xaml
    /// </summary>
    public partial class AgentPage : Page
    {
        public AgentPage()
        {
            InitializeComponent();
            UpdateSource();

        }
        
        private void UpdateSource()
        {
            var source = HREntities.GetContext().hr.ToList();
            if (!String.IsNullOrWhiteSpace(SearchBar.Text))
            {
                source = source.Where(x => x.FullName.ToLower().Contains(SearchBar.Text.ToLower())).ToList();
            }
            AgentsLV.ItemsSource = source;

        }

        private void AddAgent_Click(object sender, RoutedEventArgs e)
        {
            FrameManager.MainFrame.Navigate(new AddEditPage(AgentsLV.SelectedItem as hr));
            AgentsLV.SelectedIndex = -1;
        }

        private void DeleteAgent_Click(object sender, RoutedEventArgs e)
        {
            var agentsForRemoving = AgentsLV.SelectedItems.Cast<hr>().ToList();
            HREntities.GetContext().hr.RemoveRange(agentsForRemoving);
            HREntities.GetContext().SaveChanges();
            HREntities.GetContext().ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
            UpdateSource();
        }

        private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateSource(); 
        }

        private void Page_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if(Visibility == Visibility.Visible)
            {
                HREntities.GetContext().ChangeTracker.Entries().ToList().ForEach(x => x.Reload());
                UpdateSource();
            }

        }
    }
}
