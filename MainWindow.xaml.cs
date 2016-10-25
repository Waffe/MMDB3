using MMDB.MovieDatabase.Services;
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


namespace MMDB3
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        FreeTextSearchService freeTextService = new FreeTextSearchService();
        public MainWindow()
        {
            InitializeComponent();
        }

        private void searchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var searchedItems = freeTextService.Search(searchTextBox.Text, true);
            searchList.ItemsSource = searchedItems;
            if (searchTextBox.Text.Trim().Length == 0)
            {
                searchList.ItemsSource = null;
            }

        }
    }
}
