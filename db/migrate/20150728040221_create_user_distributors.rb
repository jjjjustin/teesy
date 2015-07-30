class CreateUserDistributors < ActiveRecord::Migration
  def change
    create_table :user_distributors do |t|
      t.belongs_to :user


      t.timestamps null: false
    end
  end
end
