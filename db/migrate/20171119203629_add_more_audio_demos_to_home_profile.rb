class AddMoreAudioDemosToHomeProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :home_profiles, :audio_5, :string
    add_column :home_profiles, :audio_6, :string
    add_column :home_profiles, :audio_7, :string
    add_column :home_profiles, :audio_8, :string
    add_column :home_profiles, :audio_9, :string
    add_column :home_profiles, :audio_10, :string
    add_column :home_profiles, :audio_title_5, :string
    add_column :home_profiles, :audio_title_6, :string
    add_column :home_profiles, :audio_title_7, :string
    add_column :home_profiles, :audio_title_8, :string
    add_column :home_profiles, :audio_title_9, :string
    add_column :home_profiles, :audio_title_10, :string
    add_column :home_profiles, :audio_desc_5, :string
    add_column :home_profiles, :audio_desc_6, :string
    add_column :home_profiles, :audio_desc_7, :string
    add_column :home_profiles, :audio_desc_8, :string
    add_column :home_profiles, :audio_desc_9, :string
    add_column :home_profiles, :audio_desc_10, :string
  end
end
