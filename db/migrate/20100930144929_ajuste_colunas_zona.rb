class AjusteColunasZona < ActiveRecord::Migration
  def self.up
    rename_column(:zonas, :cod_munic, :municipio_id)
    rename_column(:zonas, :cod_est, :estado_id)
  end

  def self.down
    rename_column(:zonas, :municipio_id, :cod_munic)
    rename_column(:zonas, :estado_id, :cod_est)
  end
end

