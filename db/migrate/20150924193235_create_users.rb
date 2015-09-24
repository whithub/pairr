class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :github_name
      t.string :email
      t.string :provider
      t.string :token
      t.string :uid
      t.string :image_url
      t.string :oauth_token
      t.string :oauth_token_secret

      t.timestamps null: false
    end
  end
end
