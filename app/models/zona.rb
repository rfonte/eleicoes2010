class Zona < ActiveRecord::Base
  has_one :estado
  has_one :municipio
  has_many :secaos
  validates_uniqueness_of :nome_zona
  validates_presence_of :nome_zona
end

