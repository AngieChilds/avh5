class CreateShowruns < ActiveRecord::Migration
  def change
    create_table :showruns do |t|
      t.string :player
      t.string :spec_vote
      t.integer :event
      t.string :make_other
      t.string :note_showrun
      t.integer :level
      t.integer :show_count
      t.references :showblog

      t.timestamps
    end
    add_index :showruns, :showblog_id
  end
end
