class RemoveCourseFromMediaCatatagory < ActiveRecord::Migration
  def up
    remove_column :media_catagories, :course
  end

  def down
    add_column :media_catagories, :course, :references
  end
end
