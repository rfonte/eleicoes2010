class AjusteSecao < ActiveRecord::Migration
  def self.up
    remove_column(:secaos, :cod_secao)
    rename_column(:secaos, :cod_est, :estado_id)
    rename_column(:secaos, :cod_zona, :zona_id)
    rename_column(:secaos, :cod_munic, :municipio_id)
    rename_column(:secaos, :cod_urna, :urna_id)
  end

  def self.down
    add_column(:secaos, :cod_secao, :integer)
    rename_column(:secaos, :estado_id, :cod_est)
    rename_column(:secaos, :zona_id, :cod_zona)
    rename_column(:secaos, :municipio_id, :cod_munic)
    rename_column(:secaos, :urna_id, :cod_urna)
  end
end

