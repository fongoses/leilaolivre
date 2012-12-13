class CreateLances < ActiveRecord::Migration
  def self.up
    create_table :lances do |t|
      t.integer :id
      t.integer :idLeilao
      t.integer :idItem
      t.integer :idUsuario
      t.references :leilao

      t.timestamps
    end
  end

  def self.down
    drop_table :lances
  end

end
