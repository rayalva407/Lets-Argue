class DebatesController < ApplicationController
  def index
    @debates = Debate.all
  end

  def show
    @debate = Debate.find(params[:id])
  end

  def new
    @debate = Debate.new
  end

  def edit
  end

  def create
    @debate = Debate.find(debate_params)
  end

  def update
  end

  def destroy
  end

  private

    def debate_params
      params.require(:debate).permit(:title, :body, :category)
    end
end
