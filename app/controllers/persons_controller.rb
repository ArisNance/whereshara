class PersonsController < ApplicationController
    
def show
    if current_person_signed_in? && current_person.provider == "facebook"
    @subscriptions = Subscription.all.paginate(:page => params[:page], :per_page => 3)
    @person = Person.find(params[:id])
    else
    redirect_to root_path
    end
end
end
