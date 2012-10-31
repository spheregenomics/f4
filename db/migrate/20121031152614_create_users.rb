class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :diaspora_login
      t.string :shapado_login

      t.timestamps
    end
  end
end
