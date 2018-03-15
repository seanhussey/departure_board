class DepartureBoardController < ApplicationController
  require 'open-uri'
  require 'csv'

  def index
    @output = fetch_csv("http://developer.mbta.com/lib/gtrtfs/Departures.csv")
  end

  private

  def fetch_csv(url)
    CSV.parse(open(url), :headers => :first_row)
  end
end
