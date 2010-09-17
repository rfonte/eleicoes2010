class CreateMunicipios < ActiveRecord::Migration
  def self.up
    create_table :municipios do |t|
      t.integer :cod_munic
      t.integer :cod_est
      t.string :nome_munic

      t.timestamps
    end
  end

  def self.down
    drop_table :municipios
  end
end
