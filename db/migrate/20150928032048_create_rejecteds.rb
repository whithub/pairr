class CreateRejecteds < ActiveRecord::Migration
  def change
    create_table :rejecteds do |t|
      t.belongs_to :user
      t.integer :friend_id

      t.timestamps null: false
    end

    add_index :rejecteds, :user_id
  end
end
