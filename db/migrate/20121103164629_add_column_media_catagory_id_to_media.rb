class AddColumnMediaCatagoryIdToMedia < ActiveRecord::Migration
  def change
    add_column :media, :media_catagory_id, :integer
  end
end
