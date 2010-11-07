class Secao < ActiveRecord::Base
  validates_presence_of :sala
  belongs_to :zona
end

