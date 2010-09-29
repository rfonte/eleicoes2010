class CreatePartidos < ActiveRecord::Migration
  def self.up
    create_table :partidos do |t|
      t.integer :cod_partido
      t.string :nome_partido
      t.string :endereco
      t.integer :telefone
      t.string :end_internet
      t.string :sigla
      t.string :comp_colig
      t.string :coligacao

      t.timestamps
    end
  end

  def self.down
    drop_table :partidos
  end
end
