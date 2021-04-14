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
    @debate = Debate.new
  end

  def edit
  end

  def create
    @user = current_user
    @debate = Debate.new(debate_params)
    if @debate.save
     redirect_to user_debate_path(@user, @debate) 
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
      params.require(:debate).permit(:title, :body, :category)
    end
end
