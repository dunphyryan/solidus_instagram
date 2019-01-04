class CreateInstagrams < ActiveRecord::Migration[5.2]
  def change
    create_table :instagrams do |t|

      t.timestamps
    end
  end
end
