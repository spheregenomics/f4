class AddMediaCatNameToMediaCatagory < ActiveRecord::Migration
  def change
    add_column :media_catagories, :media_cat, :string
  end
end
