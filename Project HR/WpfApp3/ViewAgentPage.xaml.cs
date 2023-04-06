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
    /// Логика взаимодействия для ViewAgentPage.xaml
    /// </summary>
    public partial class ViewAgentPage : Page
    {
        public ViewAgentPage()
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
            ViewAgentsLV.ItemsSource = source;
        }

        private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateSource();
        }
    }
}
