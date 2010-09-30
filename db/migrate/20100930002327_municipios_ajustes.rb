class MunicipiosAjustes < ActiveRecord::Migration
  def self.up
    remove_column(:municipios, :cod_est)
    add_column(:municipios, :estado_id, :integer)
  end

  def self.down
    add_column(:municipios, :cod_est, :integer)
    remove_column(:municipios, :estado_id)
  end
end

