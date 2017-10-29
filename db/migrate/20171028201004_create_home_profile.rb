class CreateHomeProfile < ActiveRecord::Migration[5.1]
  def change
    create_table :home_profiles do |t|
      t.string :subtitle, default: nil
      t.string :mission_title, default: nil
      t.string :mission_subtitle, default: nil
      t.string :mission_description, default: nil
      t.string :for_planners_title1, default: nil
      t.string :for_planners_description1, default: nil
      t.string :for_planners_title2, default: nil
      t.string :for_planners_description2, default: nil
      t.string :for_musicians_title1, default: nil
      t.string :for_musicians_description1, default: nil
      t.string :booking_title, default: nil
      t.string :booking_description, default: nil
      t.string :find_band_title, default: nil
      t.string :musician_looking_title, default: nil
      t.string :demos_title, default: nil
      t.string :demos_subtitle, default: nil
      t.string :demos_description, default: nil
      t.string :contact_title, default: nil
      t.string :contact_description, default: nil
      t.timestamps
    end
  end
end
