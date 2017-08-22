class HomeController < ApplicationController
    
    def index
        @subads = Subad.all
    end
    
    def about
    end
    
    def dummy
    end
    
    def donate
    end
end
