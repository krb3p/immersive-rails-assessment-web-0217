class CreateGuestAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :guest_appearances do |t|
      t.integer :guest_id
      t.integer :episode_id
      t.integer :rating

      t.timestamps
    end
  end
end
