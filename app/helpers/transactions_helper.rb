module TransactionsHelper

        #  t.integer  "user_id"
        #  t.integer  "item_id"


        def update_gem(item)
            # this is spendable Item.
            if (item.type == 0)
                if (current_user.gem >= item.gem)
                    Transaction.create!(user_id: current_user.id, item_id: item.id, accumulative: current_user.gem - item.gem)
                    current_user.update_attribute(:gem, current_user.gem - item.gem)
                    flash[:success] = "Purchased " + item.name.to_s + " : " + item.gem.to_s + " Gems deducted from your account"
                else    
                     flash[:warning] = "Purchase not complete. Please make sure you have enough gems"
                end
            # this is purchasable Item (more gems !)
            elsif(item.type == 1)
                Transaction.create!(user_id: current_user.id, item_id: item.id, accumulative: current_user.gem + item.gem)
                current_user.update_attribute(:gem, current_user.gem + item.gem)
                flash[:success] = "Purchased Item " + item.gem.to_s + " Gems" 
            end
            redirect_to gems_path
        end



end