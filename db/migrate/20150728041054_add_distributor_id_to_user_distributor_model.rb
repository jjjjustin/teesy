class AddDistributorIdToUserDistributorModel < ActiveRecord::Migration
  def change
    add_column :user_distributors, :distributor_id, :integer

  end
end

