class Zona < ActiveRecord::Base
  has_one :estado
  has_one :municipio
  has_many :secaos
  belongs_to :municipio
  belongs_to :estado
  validates_uniqueness_of :nome_zona
  validates_presence_of :nome_zona
end

