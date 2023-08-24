# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    # user_ip = request.remote_ip
    # @real_ip = request.env['HTTP_X_FORWARDED_FOR']&.split(',')
    # @real_ip = ['76.218.85.81'] if @real_ip.nil?
    # response = Faraday.get("https://api.ipgeolocation.io/ipgeo?apiKey=943115cc753b424aa65feec8e4c2b673&ip=#{@real_ip[0]}")
    # response_hash = JSON.parse(response.body)
    @city = request.location.city if Rails.env.production?

    city = @city

    client = OpenWeather::Client.new(
      api_key: 'bc1805a2fb4fe6801980703de9b4f44f'
    )
    @data = client.current_weather(city:)
    # if Rails.env.production?
    #   @country = request.location.country_code
    #   @city = request.location.city
    #   @currency = @country.upcase == "AU" ? "AU$" : "$"
    # end
  end

  def show; end
end
