class Estado < ActiveRecord::Base
  has_many :municipios
  has_many :zonas
  has_many :secaos
  validates_uniqueness_of  :nome_est
  validates_presence_of :nome_est
end

