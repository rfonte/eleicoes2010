class AjusteZona < ActiveRecord::Migration
  def self.up
    remove_column(:zonas, :cod_zona)
  end

  def self.down
    add_column(:zonas, :cod_zona, :integer)
  end
end

