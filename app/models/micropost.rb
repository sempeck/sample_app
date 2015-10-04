class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true
  # default_scope :order => 'microposts.created_at DESC'
  default_scope { where(order: 'microposts.created_at DESC') }
end




# default_scope where(color: 'red')

# default_scope { where(color: 'red') }

