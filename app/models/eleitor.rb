class Eleitor < ActiveRecord::Base
  validates_presence_of  :cod_secao, :cod_zona, :tit_eleitor, :nome, :cpf, :rg, :data_nasc
  validates_length_of    :tit_eleitor, :in => 1..12
  validates_length_of    :cod_secao, :in => 1..4
  validates_length_of    :cod_zona, :in => 1..4
  validates_uniqueness_of:tit_eleitor
  validates_uniqueness_of:cpf
    validates_uniqueness_of:rg
end

