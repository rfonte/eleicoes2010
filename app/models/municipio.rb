class Municipio < ActiveRecord::Base
  has_one :estado
  has_many :zonas
  has_many :secaos
  belongs_to :estado
  validates_uniqueness_of  :nome_munic
  validates_presence_of :nome_munic
end

