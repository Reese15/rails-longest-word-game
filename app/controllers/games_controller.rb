require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      l = ('A'..'Z').to_a.sample
      @letters << l
    end
  end

  def score
  # @score = params[:word]
  @score = JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{params[:word]}").read)
  end

end


