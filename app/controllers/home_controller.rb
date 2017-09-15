class HomeController < ApplicationController
    
    def index
        @subads = Subad.all
    end
    
    def about
    end
    
    def faq
    end
    
    def donate
    end
end
