class EstadoDeleteCodEst < ActiveRecord::Migration
  def self.up
    remove_column(:estados, :cod_est)
  end

  def self.down
    add_column(:estados, :cod_est, :integer)
  end
end

