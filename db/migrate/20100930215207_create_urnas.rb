class CreateUrnas < ActiveRecord::Migration
  def self.up
    create_table :urnas do |t|
      t.integer :partido_id
      t.integer :candidato_id
      t.string :voto

      t.timestamps
    end
  end

  def self.down
    drop_table :urnas
  end
end

