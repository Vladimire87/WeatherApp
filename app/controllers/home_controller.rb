# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    # user_ip = request.remote_ip
    # @real_ip = request.env['HTTP_X_FORWARDED_FOR']&.split(',')
    # @real_ip = ['76.218.85.81'] if @real_ip.nil?
    # response = Faraday.get("https://api.ipgeolocation.io/ipgeo?apiKey=943115cc753b424aa65feec8e4c2b673&ip=#{@real_ip[0]}")
    # response_hash = JSON.parse(response.body)
    # city = response_hash['city']
    @city = request.location.city if Rails.env.production?

    client = OpenWeather::Client.new(
      api_key: 'bc1805a2fb4fe6801980703de9b4f44f'
    )
    @data = client.current_weather(@city)
  end

  def show; end
end
