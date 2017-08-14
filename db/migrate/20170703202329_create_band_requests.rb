class CreateBandRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :band_requests do |t|
      t.string :first, :null=>false, :limit => 50
      t.string :last, :null=>false, :limit => 50
      t.string :email, :null=>false, :limit => 100
      t.string :phone, :null=>false, :limit => 20
      t.string :preferred_contact #email or phone
      t.string :date, :null=>false
      t.string :time
      t.string :address
      t.string :city, :null=>false
      t.string :state, :null=>false
      t.decimal :hours
      t.integer :bandsize
      t.string :instrument_wanted
      t.text :description
      t.string :status
      t.timestamps
    end
  end
end
