class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end

    add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  end
end
