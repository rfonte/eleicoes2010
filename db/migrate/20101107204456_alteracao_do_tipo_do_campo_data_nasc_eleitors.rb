class AlteracaoDoTipoDoCampoDataNascEleitors < ActiveRecord::Migration
  def self.up
    remove_column :eleitors, :data_nasc
    add_column :eleitors, :data_nasc, :date
  end

  def self.down
    remove_column :eleitors, :data_nasc
    add_column :eleitors, :data_nasc, :integer
  end
end

