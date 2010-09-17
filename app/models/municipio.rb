class Municipio < ActiveRecord::Base
  has_one :estado
  has_many :zonas
end

