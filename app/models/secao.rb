class Secao < ActiveRecord::Base
  validates_presence_of :sala
  belongs_to :zona
  belongs_to :municipio
  belongs_to :estado
end

