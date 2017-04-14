
Transaction Example using Rails 
==============================================================


The current repository is hosted on Heroku

https://frozen-lake-16909.herokuapp.com/

![Screenshot](http://imgur.com/HrdFUeY.png?raw=true)

![Screenshot](http://imgur.com/jy6rp2E.png?raw=true)


Models
==============

1) User
  - has_many :items, through: :transactions 
2) Transaction
  - belongs_to :user
  - belongs_to :item
3) Item



