# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    # user_ip = request.remote_ip
    @real_ip = request.env['HTTP_X_FORWARDED_FOR']
    @real_ip1 = request.remote_ip

    @real_ip2 = request.env['HTTP_X_FORWARDED_FOR']

    @real_ip3 = request.remote_addr

    @real_ip4 = request.env['REMOTE_ADDR']

    response = Faraday.get("https://api.ipgeolocation.io/ipgeo?apiKey=943115cc753b424aa65feec8e4c2b673&ip=#{@real_ip1}")

    response_hash = JSON.parse(response.body)
    city = response_hash['city']

    client = OpenWeather::Client.new(
      api_key: 'bc1805a2fb4fe6801980703de9b4f44f'
    )
    @data = client.current_weather(city:)
  end

  def show; end
end
