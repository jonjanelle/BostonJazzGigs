class CreateMusicianRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :musician_requests do |t|
      t.string :first, :null => false, :limit => 50
      t.string :last, :null => false, :limit => 50
      t.string :email, :null => false, :limit => 100
      t.string :phone, :null => false, :limit => 20
      t.string :preferred_contact #email or phone
      t.string :address
      t.string :city, :null => false
      t.string :state, :null => false
      t.integer :travel_radius
      t.string :primary_instrument, :null => false
      t.string :secondary_instrument
      t.text :experience
      t.text :availability
      t.text :additional_info
      t.string :status
      t.timestamps
    end
  end
end
