class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :twitter_link, :string
    add_column :users, :github_link, :string
  end
end
