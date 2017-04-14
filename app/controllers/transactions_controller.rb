class TransactionsController < ApplicationController

    include TransactionsHelper

    def create
        # creation should be done here. Let's rethink how we should approach this task
        type = params[:type]
        amount = params[:price]
        update_gem(type, amount)
        redirect_to gems_path
    end 

    def show
        @Transactions = current_user.transactions
    end 
    


end


