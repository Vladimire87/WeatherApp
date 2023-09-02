# frozen_string_literal: true

# clear sky
# few clouds
# scattered clouds
# broken clouds
# shower rain
# rain
# thunderstorm
# snow
# mist

module HomeHelper
  def weather_icon(data)
    weather = data.weather[0]['description']
    icon = data.weather[0]['icon']

    if weather.casecmp('clear sky').zero? || icon.last == 'd'
      if icon.last == 'd'
        @bg = 'Weather=Cloudy, Moment=Day.png'
        @icon = 'icon/clear_sky_day'
      else
        @bg = 'Weather=Clear, Moment=Night.png'
        @icon = 'icon/clear_sky_night'
      end
    elsif weather.casecmp('few clouds').zero? || icon.last == 'd'
      if icon.last == 'd'
        @bg = 'Weather=Cloudy, Moment=Day.png'
        @icon = 'icon/few_clouds'
      else
        @bg = 'Weather=Few Clouds, Moment=Night.png'
        @icon = 'icon/few_clouds_night'
      end
    elsif weather.casecmp('scattered clouds').zero? || icon.last == 'd'
      if icon.last == 'd'
        @bg = 'Weather=Cloudy, Moment=Day.png'
        @icon = 'icon/scattered_clouds'
      else
        @bg = 'Weather=Few Clouds, Moment=Night.png'
        @icon = 'icon/scattered_clouds_night'
      end
    elsif weather.casecmp('broken clouds').zero? || icon.last == 'd'
      if icon.last == 'd'
        @bg = 'Weather=Cloudy, Moment=Day.png'
        @icon = 'icon/scattered_clouds'
      else
        @bg = 'Weather=Few Clouds, Moment=Night.png'
        @icon = 'icon/scattered_clouds'
      end
    else
      @bg = 'Weather=Few Clouds, Moment=Night.png'
      @icon = 'icon/scattered_clouds'
    end
  end

  # def weather_bg(data)
  #   icon = data['weather'][0]['icon'].downcase

  #   case icon
  #   when 'clear sky'
  #     'icon/weather_clouds_day'
  #   when 'few clouds'
  #     'icon/few_clouds'
  #   else
  #     'clouds'
  #   end
  # end
end
