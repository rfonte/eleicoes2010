class Estado < ActiveRecord::Base
  has_many :municipios
  validates_uniqueness_of  :nome_est
  validates_presence_of :nome_est
end

