class AddAudioDemosToHomeProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :home_profiles, :audio_1, :string
    add_column :home_profiles, :audio_2, :string
    add_column :home_profiles, :audio_3, :string
    add_column :home_profiles, :audio_4, :string
  end
end
