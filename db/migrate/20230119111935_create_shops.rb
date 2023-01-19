class CreateShops < ActiveRecord::Migration[7.0]
  def self.up
    create_table :shops, id: :uuid  do |t|
      t.string :shopify_domain, null: false, unique: true, default: ""
      t.string :shopify_token, null: false, default: ""
      t.timestamps
    end

    add_index :shops, :shopify_domain, unique: true
  end

  def self.down
    drop_table :shops
  end
end
