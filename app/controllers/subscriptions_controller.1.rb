class SubscriptionsController < ApplicationController
before_action :set_subscription, only: [:show, :edit, :update, :destroy]
before_action :correct_user, only: [:edit, :update, :destroy]

# GET /subscriptions
# GET /subscriptions.json

def index
  @subscriptions = Subscription.all
end

# GET /subscriptions/1
# GET /subscriptions/1.json
def show
end

# GET /subscriptions/new
def new
  # check if user has two subscriptions or less
  if current_user.subscriptions.size <= 2
  # if the user has less than 2 subscriptions, we'll allow them to create a 3rd
  @subscription = current_user.subscriptions.build
  # but if the user aleady has three subscriptions, then we redirect them with a message
elsif current_user.subscriptions.size >= 3
redirect_to users_profile_url(current_user.id), notice: 'You lost more than three pets? | Call the Police!'
  end
end

# GET /subscriptions/1/edit
def edit
end

# POST /subscriptions
# POST /subscriptions.json
def create
@subscription = current_user.subscriptions.build(subscription_params)

respond_to do |format|
  if @subscription.save

    format.html { redirect_to users_profile_url(current_user.id), notice: 'Your pet was successfully created.' }
    format.json { render :show, status: :created, location: @subscription }
  else
    format.html { render :new }
    format.json { render json: @subscription.errors, status: :unprocessable_entity }
  end

end

# PATCH/PUT /subscriptions/1
# PATCH/PUT /subscriptions/1.json
def update
respond_to do |format|
  if @subscription.update(subscription_params)
    format.html { redirect_to users_profile_url(current_user.id), notice: 'Your pet was successfully updated.' }
    format.json { render :show, status: :ok, location: @subscription }
  else
    format.html { render :edit }
    format.json { render json: @subscription.errors, status: :unprocessable_entity }
  end
end
end

# DELETE /subscriptions/1
# DELETE /subscriptions/1.json
def destroy
@subscription.destroy
respond_to do |format|
  format.html { redirect_to :back, notice: 'Your pet was successfully destroyed.' }
  format.json { head :no_content }
end

private
# Use callbacks to share common setup or constraints between actions.
def set_subscription
  @subscription = Subscription.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def subscription_params
   params.require(:subscription).permit(:title, :company, :url, :start_time, :end_time, :phone_number, :time, :pet_name, :breed, :animal, :notes, :pet_image, :option_1, :option_2, :gender)
end

def correct_user
  @subscriptions = current_user.subscriptions.find_by(id: params[:id])
  redirect_to users_profile_url, notice: "Not authorized to edit this pet" if @subscription.nil?
end

end
end

end