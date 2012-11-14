class CreateLeilaos < ActiveRecord::Migration
  def self.up
    create_table :leilaos do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :leilaos
  end
end
