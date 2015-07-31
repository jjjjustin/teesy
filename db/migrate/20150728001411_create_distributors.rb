class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
