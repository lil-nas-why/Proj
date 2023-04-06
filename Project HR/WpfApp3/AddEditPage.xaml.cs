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
    /// Логика взаимодействия для AddEditPage.xaml
    /// </summary>
    public partial class AddEditPage : Page
    {
        private hr _currentHr = new hr();
        public AddEditPage(hr hr) 
        {
            InitializeComponent();

            if (hr != null) 
            {
                this._currentHr = hr;
            }
            DataContext = _currentHr;
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int count = 0;
                hr someHR = null;
                if (_currentHr.ID == 0)
                {
                    someHR = HREntities.GetContext().hr.Where(x => x.FullName.ToLower().Equals(FullName.Text.ToLower()) || x.Birthday.ToString().Equals(Birthday.Text.ToString())).FirstOrDefault();
                }
               
                if (someHR != null)
                {
                    MessageBox.Show("Сотрудник уже сущетвует", "ВНИМАНИЕ", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if (String.IsNullOrWhiteSpace(FullName.Text))
                {
                    count++;
                }

                if (String.IsNullOrWhiteSpace(Birthday.Text))
                {
                    count++;
                }

                if (String.IsNullOrWhiteSpace(Department.Text))
                {
                    count++;
                }

                if (String.IsNullOrWhiteSpace(Post.Text))
                {
                    count++;
                }

                if (String.IsNullOrWhiteSpace(Salary.Text))
                {
                    count++;
                }

                if (String.IsNullOrWhiteSpace(Datapreception.Text))
                {
                    count++;
                }

                if (String.IsNullOrWhiteSpace(DataExtensions.Text))
                {
                    _currentHr.DataExtensions = null;
                }

                if (count > 0)
                {
                    MessageBox.Show("Не все поля заполнены", "ВНИМАНИЕ", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if (_currentHr.ID == 0)
                {
                    HREntities.GetContext().hr.Add(_currentHr);
                }

                HREntities.GetContext().SaveChanges();
                FrameManager.MainFrame.GoBack();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                
            }

            

        }

    }
}
