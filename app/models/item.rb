class Item < ApplicationRecord
 
  # This is caused by ActiveRecord already using a method named "transactions". 
  # To handle this issue, choose an appropriate alternative name for the association and specify the model class and foreign key manually.
  
   scope :spendable, -> { where(item_type: 0) }
   scope :purchasable, -> { where(item_type: 1) }

   def type
      self.item_type 
   end 
  

end
