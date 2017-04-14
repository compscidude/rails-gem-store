class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item
  
  default_scope { order(created_at: :desc) }

  def get_date
        self.created_at.strftime("%m-%d (%I:%M%p)")
  end 

  def get_gem
        if (self.item.type == 0)
         " - " + self.item.gem.to_s
        else
          " + " + self.item.gem.to_s
        end
  end 

end
