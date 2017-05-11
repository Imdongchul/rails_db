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
    @text =q.name
    @text2 = q.content
  	maple=Artii::Base.new
  	@output = maple.asciify(@text)
  	@output1 = maple.asciify(@text2)
  end

end
