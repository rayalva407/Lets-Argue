class DebatesController < ApplicationController
  def index
    @debates = Debate.all
  end

  def show
    @debate = Debate.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
