class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :idItem
      t.string :nomeItem
      t.string :linkfoto

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
