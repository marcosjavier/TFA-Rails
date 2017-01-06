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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170104004119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "dni"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "telefono",   limit: 8
    t.string   "direccion"
  end

  create_table "directores", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expedientes", force: true do |t|
    t.string   "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "alumno_id"
    t.integer  "director_id"
    t.string   "numero_expediente"
  end

  add_index "expedientes", ["alumno_id"], name: "index_expedientes_on_alumno_id", using: :btree
  add_index "expedientes", ["director_id"], name: "index_expedientes_on_director_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "dni"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "surname"
  end

end
