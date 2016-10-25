using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using MMDB.MovieDatabase.Domain;
using MMDB.MovieDatabase.Services;

namespace MMDB3
{
    class ActorMovieListConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value.GetType() == typeof(CastOrCrew))
            {
                CastOrCrewService castOrCrewService = new CastOrCrewService();
                var movies = castOrCrewService.GetActedMovies((CastOrCrew)value);
                return string.Join("\n", movies.Select(m=>m.Title));
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
