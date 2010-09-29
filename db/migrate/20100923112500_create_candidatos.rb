class CreateCandidatos < ActiveRecord::Migration
  def self.up
    create_table :candidatos do |t|
      t.integer :cod_candidato
      t.string :nome_urna
      t.integer :cpf
      t.string :nome_completo
      t.timestamp :data_nas
      t.string :nacionalidade
      t.string :grau_instr
      t.string :sexo
      t.string :estado_civil
      t.string :naturalidade
      t.string :ocupacao

      t.timestamps
    end
  end

  def self.down
    drop_table :candidatos
  end
end
