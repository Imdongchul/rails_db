class HomeController < ApplicationController
  def index
  	@qall = Question.all
  end

  def new
  end

  def create
  	q = Question.new
  	q.name = params[:db_name]
  	q.content = params[:db_content]
  	q.save
  end

end
