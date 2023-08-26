# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @city = request.location.city if Rails.env.production?
    @city = 'Moscow' if Rails.env.development?

    city = @city

    client = OpenWeather::Client.new(
      api_key: 'bc1805a2fb4fe6801980703de9b4f44f'
    )
    $data = client.current_weather(city:)
  end

  def show; end
end
