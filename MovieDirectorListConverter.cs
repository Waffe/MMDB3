using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using MMDB.MovieDatabase.Services;
using MMDB.MovieDatabase.Domain;

namespace MMDB3
{
    class MovieDirectorListConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value.GetType() == typeof(Movie))
            {
                MovieService movieService = new MovieService();
                var directors = movieService.GetDirectors((Movie)value);
                return string.Join("\n", directors.Select(d => d.Name));
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
