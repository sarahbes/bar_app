class UsersController < ApplicationController
def create
    @bar = Bar.find(params[:bar_id])
    @user = @bar.users.create(user_params)
    redirect_to bar_path(@bar)
  end

  def destroy
    @bar = Bar.find(params[:bar_id])
    @user = @bar.users.find(params[:id])
    @user.destroy
    redirect_to bar_path(@bar)
  end

  def edit
    @bar = Bar.find(params[:bar_id])
    @user = User.find(params[:id])
  end

  def update
    @bar = Bar.find(params[:bar_id])
    @user = @bar.users.find(params[:id])
    if @user.update(user_params)
      redirect_to @bar
    else 
      render 'edit'
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :phone_number, :time, :notes)
    end
end