class CreateCadEleitors < ActiveRecord::Migration
  def self.up
    create_table :cad_eleitors do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :cad_eleitors
  end
end
