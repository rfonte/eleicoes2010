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

ActiveRecord::Schema.define(:version => 20100923112500) do

  create_table "cad_eleitors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "cod_func"
    t.string   "nome"
    t.integer  "cpf"
    t.integer  "rg"
    t.string   "cod_bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", :force => true do |t|
    t.integer  "cod_est"
    t.string   "nome_est"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", :force => true do |t|
    t.integer  "cod_munic"
    t.integer  "cod_est"
    t.string   "nome_munic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partidos", :force => true do |t|
    t.integer  "cod_partido"
    t.string   "nome_partido"
    t.string   "endereco"
    t.integer  "telefone"
    t.string   "end_internet"
    t.string   "sigla"
    t.string   "comp_colig"
    t.string   "coligacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "secaos", :force => true do |t|
    t.integer  "cod_secao"
    t.integer  "cod_zona"
    t.integer  "cod_munic"
    t.integer  "cod_est"
    t.integer  "cod_urna"
    t.string   "sala"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zonas", :force => true do |t|
    t.integer  "cod_zona"
    t.integer  "cod_munic"
    t.integer  "cod_est"
    t.string   "nome_zona"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end