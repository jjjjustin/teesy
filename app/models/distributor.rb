class Distributor < ActiveRecord::Base
  has_many :user_distributors
  has_many :users, through: :user_distributors
end
