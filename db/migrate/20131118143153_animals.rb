class Animals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :type
      t.string :owner
     t.string :name
     t.integer :hunger
     t.integer :food
     
      t.timestamps

  end
end
end

