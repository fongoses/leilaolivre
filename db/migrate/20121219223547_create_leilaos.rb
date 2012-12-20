class CreateLeilaos < ActiveRecord::Migration
  def self.up
    create_table :leilaos do |t|
      t.integer :idLeilao
      t.integer :idProprietario
      t.references :Lances
      t.datetime :DataCriacao
      t.datetime :DataExpiracao
      t.references :Item
      t.string :itemCategorias
      t.float :LanceInicial

      t.timestamps
    end
  end

  def self.down
    drop_table :leilaos
  end
end
