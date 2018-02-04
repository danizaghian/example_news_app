class ArticlesController < ApplicationController

  def index
    response = Unirest.get("https://newsapi.org/v2/everything?q=#{params[:search_term]}&apiKey=56c482a7b7504fe697a56b5453f141d2")
    render json: response.body
  end

end
