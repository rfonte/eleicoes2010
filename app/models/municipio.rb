class Municipio < ActiveRecord::Base
  has_one :estado
  has_many :zonas
  has_many :secaos
  belongs_to :estado
end

