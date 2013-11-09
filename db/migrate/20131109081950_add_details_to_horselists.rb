class AddDetailsToHorselists < ActiveRecord::Migration
  def change
    add_column :horselists, :range1, :string
    add_column :horselists, :range2, :string
    add_column :horselists, :range3, :string
    add_column :horselists, :range4, :string
    add_column :horselists, :range5, :string
    add_column :horselists, :range6, :string
    add_column :horselists, :range7, :string
    add_column :horselists, :range8, :string
    add_column :horselists, :range9, :string
   add_column :horselists, :range10, :string
  end
end
