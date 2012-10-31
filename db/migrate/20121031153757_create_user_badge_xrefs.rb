class CreateUserBadgeXrefs < ActiveRecord::Migration
  def change
    create_table :user_badge_xrefs do |t|
      t.references :user
      t.references :badge

      t.timestamps
    end
    add_index :user_badge_xrefs, :user_id
    add_index :user_badge_xrefs, :badge_id
  end
end
