class PersonsController < ApplicationController
    
    def show
    @subscriptions = Subscription.all
    @person = Person.find(params[:id])
    end
end
