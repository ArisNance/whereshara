class UsersController < ApplicationController
    
def show
    @subads = Subad.all
    @subscriptions = Subscription.all.paginate(:page => params[:page], :per_page => 3)
    @user = User.find(params[:id])
end



end
