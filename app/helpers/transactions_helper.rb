module TransactionsHelper


        # This is available to views, but not in the controller unless you call include

        def update_gem(type, amount)
            if (type == 'item_buy')
                if (current_user.gem >= amount.to_i)
                    Transaction.create!(user: current_user, trans_type: type, gem: amount )
                    current_user.update_attribute(:gem, current_user.gem - amount.to_i)
                    flash[:success] = "Purchased Item, " + amount + " Gems deducted from your account" 
                else
                    flash[:warning] = "Purchase not complete. Please make sure you have enough gems"
                end
            elsif (type == 'gem_buy')
                Transaction.create!(user: current_user, trans_type: type, gem: amount )
                current_user.update_attribute(:gem, current_user.gem + amount.to_i) 
                flash[:success] = "Purchased Item " + amount + " Gems" 
            end 
        end 
        

end