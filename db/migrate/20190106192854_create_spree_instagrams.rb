class CreateSpreeInstagrams < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_instagrams do |t|

      t.timestamps
    end
  end
end
