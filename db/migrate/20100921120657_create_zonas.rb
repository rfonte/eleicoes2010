class CreateZonas < ActiveRecord::Migration
  def self.up
    create_table :zonas do |t|
      t.integer :cod_zona
      t.integer :cod_munic
      t.integer :cod_est
      t.string :nome_zona

      t.timestamps
    end
  end

  def self.down
    drop_table :zonas
  end
end
