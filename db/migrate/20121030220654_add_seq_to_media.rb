class AddSeqToMedia < ActiveRecord::Migration
  def change
    add_column :media, :seq, :integer
  end
end
