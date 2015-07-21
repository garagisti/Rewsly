class Story < ActiveRecord::Base

  validates_presence_of :title, :link, :upvotes, :category

  validates :upvotes, numericality: {only_integer: true, greater_than_or_equal_to: 0}

end
