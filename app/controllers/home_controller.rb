class HomeController < ApplicationController

    def index
        @credits = Credit.all
    end    

end