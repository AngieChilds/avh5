class ChangeShowblogs < ActiveRecord::Migration
  def change
   change_column(:showblogs, :rundate, :datetime)
    end
  end
