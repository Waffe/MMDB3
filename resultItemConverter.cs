using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using MMDB.MovieDatabase.Domain;

namespace MMDB3
{
    class ResultItemConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(value.GetType() == typeof(CastOrCrew))
            {
                return $" {((CastOrCrew)value).Name} ({((CastOrCrew)value).DateOfBirth:yyyy-MM-dd})";
            }
            if(value.GetType() == typeof(Movie))
            {
                return $" {((Movie)value).Title} ({((Movie)value).ProductionYear.Value})";
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
