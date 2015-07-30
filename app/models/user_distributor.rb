class UserDistributor < ActiveRecord::Base
  belongs_to :user
  belongs_to :distributor
end

