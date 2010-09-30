class AjustePartidos < ActiveRecord::Migration
  def self.up
    remove_column(:partidos, :cod_partido)
    add_column(:partidos, :pres_naconal, :string)
  end

  def self.down
    add_column(:partidos, :cod_partido, :integer)
    remove_column(:partidos, :pres_nacional)
  end
end

