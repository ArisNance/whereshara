class PersonsController < ApplicationController
    
def show
    @subscriptions = Subscription.all.paginate(:page => params[:page], :per_page => 3)
    @person = Person.find(params[:id])

end
end
