class CreateLeilaos < ActiveRecord::Migration
  def self.up
    create_table :leilaos do |t|
      t.integer :id
      t.string :proprietario
      t.reference :lances
      t.datetime :dataCriacao
      t.datetime :dataExpiracao
      t.reference :item

      t.timestamps
    end
  end

  def self.down
    drop_table :leilaos
  end
end
