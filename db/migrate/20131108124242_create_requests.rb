class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :spec
      t.datetime :date
      t.string :note

      t.timestamps
    end
  end
end
