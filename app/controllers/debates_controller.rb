class DebatesController < ApplicationController
  def index
    if params[:user_id]
      @user = current_user
      @debates = @user.debates
    else
      @debates = Debate.all
    end
  end

  def show
    @debate = Debate.find(params[:id])
  end

  def new
    @user = current_user
    @debate = @user.debates.new
  end

  def edit
  end

  def create
    @user = current_user
    @debate = @user.debates.new(debate_params)
    if @debate.save
      redirect_to debate_path(@debate) 
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

    def debate_params
      params.require(:debate).permit(:title, :body, :category, :user_id)
    end
end
