class TransactionsController < ApplicationController

    include TransactionsHelper

    def create
        # creation should be done here. Let's rethink how we should approach this task
        item = Item.find(params[:item])
        update_gem(item)
    end 

    def show
    end 
    


end


