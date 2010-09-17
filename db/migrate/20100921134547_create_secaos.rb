class CreateSecaos < ActiveRecord::Migration
  def self.up
    create_table :secaos do |t|
      t.integer :cod_secao
      t.integer :cod_zona
      t.integer :cod_munic
      t.integer :cod_est
      t.integer :cod_urna
      t.string :sala

      t.timestamps
    end
  end

  def self.down
    drop_table :secaos
  end
end

