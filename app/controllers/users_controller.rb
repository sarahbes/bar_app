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
  
  private
    def user_params
      params.require(:user).permit(:name, :phone_number, :time, :notes)
    end
end