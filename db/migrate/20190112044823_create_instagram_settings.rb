class CreateInstagramSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :instagram_settings do |t|
      t.boolean :enabled
      t.integer :number
      t.string :client_id
      t.string :token

      t.timestamps
    end
    add_index :instagram_settings, :string, unique: true
  end
end
