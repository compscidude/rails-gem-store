class Transaction < ApplicationRecord
  belongs_to :user
  has_one :item
  default_scope { order(created_at: :desc) }

  def get_date
        self.created_at.strftime("%m-%d (%I:%M%p)")
  end 

  def get_gem
        if (self.trans_type == 'item_buy')
         " - " + self.gem.to_s
        else
          " + " + self.gem.to_s
        end
  end 



end
