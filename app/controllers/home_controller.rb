# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @city = current_city
    fetch_weather_data(@city)
  end

  def show; end

  private

  def current_city
    if Rails.env.production?
      request.location.city
    else
      'Moscow'
    end
  end

  def fetch_weather_data(city)
    client = OpenWeather::Client.new(
      api_key: ENV.fetch('OPENWEATHER_API_KEY', nil)
    )
    client.current_weather(city:)
  end
end
