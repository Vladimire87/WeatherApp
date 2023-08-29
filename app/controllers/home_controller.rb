# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @city = current_city
  end

  def show
    @city = current_city
    @data = fetch_weather_data(@city)
  end

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
      api_key: Rails.application.credentials.openweather_api_key
    )

    client.current_weather(city:)
  end
end
