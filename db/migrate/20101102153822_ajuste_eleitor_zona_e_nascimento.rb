class AjusteEleitorZonaENascimento < ActiveRecord::Migration
  def self.up
    add_column(:eleitors, :cod_zona, :integer)
    add_column(:eleitors, :data_nasc, :integer)
  end

  def self.down
    remove_column(:eleitors, :cod_zona)
    remove_column(:eleitors, :data_nasc)
  end
end

