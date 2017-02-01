class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def guesses
      @first = params[:first_number].to_i
      @second = params[:second_number].to_i
      @third = params[:third_number].to_i

  if @first < @second && @second < @third
    @outcome= "Yes!"
  else
    @outcome= "No!"
  end
  render("guesses.html.erb")
end

def answer
  @response= params[:rule]
  render("answer.html.erb")
end
end
