class CreateEleitors < ActiveRecord::Migration
  def self.up
    create_table :eleitors do |t|
      t.integer :tit_eleitor
      t.integer :cod_secao
      t.integer :cod_func
      t.string :nome
      t.integer :cpf
      t.integer :rg
      t.string :cod_bio

      t.timestamps
    end
  end

  def self.down
    drop_table :eleitors
  end
end
