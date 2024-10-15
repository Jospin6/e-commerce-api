class HomeController < ApplicationController

    def index
        @credits = Credit.all
        @transactions = Transaction.all
    end    

end