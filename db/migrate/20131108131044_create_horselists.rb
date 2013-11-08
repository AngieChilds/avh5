class CreateHorselists < ActiveRecord::Migration
  def change
    create_table :horselists do |t|
      t.string :player
      t.string :horse
      t.integer :currant_level
      t.string :range
      t.datetime :date
      t.string :note
      t.references :request
      t.timestamps
    end
  end
end
