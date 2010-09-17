class CreateEstados < ActiveRecord::Migration
  def self.up
    create_table :estados do |t|
      t.integer :cod_est
      t.string :nome_est

      t.timestamps
    end
  end

  def self.down
    drop_table :estados
  end
end
