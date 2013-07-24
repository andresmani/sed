# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130722163417) do

  create_table "actividades", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "tema_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "actividades", ["tema_id"], :name => "index_actividades_on_tema_id"

  create_table "estudiantes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "documento"
    t.string   "email"
    t.string   "tel"
    t.string   "cel"
    t.date     "fechana"
    t.integer  "grupo_id"
    t.integer  "tpodocumento_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "programa_id"
  end

  add_index "estudiantes", ["grupo_id"], :name => "index_estudiantes_on_grupo_id"
  add_index "estudiantes", ["tpodocumento_id"], :name => "index_estudiantes_on_tpodocumento_id"

  create_table "evaluaciones", :force => true do |t|
    t.text     "datevalu"
    t.float    "calificacion"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "archivo_file_name"
    t.string   "archivo_content_type"
    t.integer  "archivo_file_size"
    t.datetime "archivo_updated_at"
  end

  create_table "grupos", :force => true do |t|
    t.string   "ficha"
    t.integer  "programa_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "grupos", ["programa_id"], :name => "index_grupos_on_programa_id"

  create_table "programas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "temas", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "unidad_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "temas", ["unidad_id"], :name => "index_temas_on_unidad_id"

  create_table "tpodocumentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "unidades", :force => true do |t|
    t.string   "nombre"
    t.integer  "programa_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "unidades", ["programa_id"], :name => "index_unidades_on_programa_id"

  create_table "users", :force => true do |t|
    t.string   "username",                     :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"

end
