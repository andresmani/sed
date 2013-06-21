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

ActiveRecord::Schema.define(:version => 20130616012309) do

  create_table "actividades", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "tema_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "actividades", ["tema_id"], :name => "index_actividades_on_tema_id"

  create_table "evaluaciones", :force => true do |t|
    t.text     "datevalu"
    t.float    "calificacion"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "programas", :force => true do |t|
    t.string   "nombre"
    t.string   "ficha"
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

  create_table "unidades", :force => true do |t|
    t.string   "nombre"
    t.integer  "programa_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "unidades", ["programa_id"], :name => "index_unidades_on_programa_id"

end
