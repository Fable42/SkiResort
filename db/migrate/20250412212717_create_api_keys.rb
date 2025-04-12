class CreateApiKeys < ActiveRecord::Migration[7.1]
  def change
    create_table :api_keys do |t|
      t.string :type_prefix, null: false
      t.string :random_prefix, null: false
      t.string :token, null: false
      t.datetime :revoked_at
      t.datetime :expires_at

      t.timestamps
    end

    add_index :api_keys, :token, unique: true
  end
end
