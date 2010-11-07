# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101107204456) do

  create_table "candidatos", :force => true do |t|
    t.integer  "cod_candidato"
    t.string   "nome_urna"
    t.integer  "cpf"
    t.string   "nome_completo"
    t.datetime "data_nas"
    t.string   "nacionalidade"
    t.string   "grau_instr"
    t.string   "sexo"
    t.string   "estado_civil"
    t.string   "naturalidade"
    t.string   "ocupacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eleitors", :force => true do |t|
    t.integer  "tit_eleitor"
    t.integer  "cod_secao"
    t.string   "nome"
    t.integer  "cpf"
    t.integer  "rg"
    t.string   "cod_bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "data_nasc"
  end

  create_table "estados", :force => true do |t|
    t.string   "nome_est"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", :force => true do |t|
    t.string   "nome_munic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "estado_id"
  end

  create_table "partidos", :force => true do |t|
    t.string   "nome_partido"
    t.string   "endereco"
    t.integer  "telefone"
    t.string   "end_internet"
    t.string   "sigla"
    t.string   "comp_colig"
    t.string   "coligacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "pres_nacional"
  end

  create_table "secaos", :force => true do |t|
    t.integer  "zona_id"
    t.integer  "municipio_id"
    t.integer  "estado_id"
    t.integer  "urna_id"
    t.string   "sala"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urnas", :force => true do |t|
    t.integer  "partido_id"
    t.integer  "candidato_id"
    t.string   "voto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zonas", :force => true do |t|
    t.integer  "municipio_id"
    t.integer  "estado_id"
    t.string   "nome_zona"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
