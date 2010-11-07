class ExcluirCodzonaECodfunc < ActiveRecord::Migration
  def self.up
    remove_column(:eleitors, :cod_func)
    remove_column(:eleitors, :cod_zona)
  end

  def self.down
    add_column(:eleitors, :cod_func, :integer)
    add_column(:eleitors, :cod_zona, :integer)
  end
end

