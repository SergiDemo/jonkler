# frozen_string_literal: true

class JokesController < ApplicationController
  def index
    @jokes = Joke.includes(:user).all
  end

  def create
    creator = JokeCreator.new(params[:joke][:username], params[:joke][:text])
    result = creator.call

    if result.is_a?(Joke)
      redirect_to jokes_path, notice: "Шутка успешно сохранена."
    else
      flash.now[:alert] = "Ошибка: #{result.full_messages.to_sentence}"
      render :new
    end
  end
  def show
    @joke = Joke.find(params[:id])
    @user = @joke.user
  end

  def new
    @joke = Joke.new
  end
end
