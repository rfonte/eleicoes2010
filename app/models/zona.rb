class Zona < ActiveRecord::Base
  has_one :estado
  has_one :municipio
end

