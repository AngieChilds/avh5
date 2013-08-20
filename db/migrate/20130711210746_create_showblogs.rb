class CreateShowblogs < ActiveRecord::Migration
  def change
    create_table :showblogs do |t|
      t.string :name
      t.datetime :rundate
      t.string :spec_choice
      t.string :level_range
      t.string :note

        t.timestamps
    end
  end
end
