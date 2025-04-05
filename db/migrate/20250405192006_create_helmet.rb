class CreateHelmet < ActiveRecord::Migration[7.1]
  def change
    create_table :helmets do |t|
      t.string :ventilation_type, null: false
      t.boolean :has_audio_support, null: false
      t.string :certifications, null: false

      t.timestamps
    end
  end
end
