class User < ActiveRecord::Base
  default_scope :order => 'score DESC'
  validates :name, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates :score, :presence => true, :numericality => {:greater_than_or_equal_to => 0, :less_than_or_equal_to => 100}
end
