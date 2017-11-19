class AddAudioTitlesToHomeProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :home_profiles, :audio_title_1, :string
    add_column :home_profiles, :audio_title_2, :string
    add_column :home_profiles, :audio_title_3, :string
    add_column :home_profiles, :audio_title_4, :string

    add_column :home_profiles, :audio_desc_1, :string
    add_column :home_profiles, :audio_desc_2, :string
    add_column :home_profiles, :audio_desc_3, :string
    add_column :home_profiles, :audio_desc_4, :string
  end
end
