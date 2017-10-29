class AddProfileNameToHomeProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :home_profiles, :profile_name, :string
    HomeProfile.create(profile_name: "default")
  end

end
