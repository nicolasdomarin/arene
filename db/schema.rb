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

ActiveRecord::Schema.define(version: 20181001081810) do

  create_table "clients", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "email"
    t.string "adresse"
    t.integer "code_postal"
    t.string "pays"
    t.integer "age"
    t.boolean "sexe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", id: false, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reservation_id"
    t.integer "client_id"
    t.index ["client_id"], name: "index_reservations_on_client_id"
    t.index ["reservation_id"], name: "index_reservations_on_reservation_id"
  end

  create_table "spectacles", force: :cascade do |t|
    t.integer "cle_representation"
    t.string "nom"
    t.string "representation"
    t.date "date_representation"
    t.time "heure_representation"
    t.date "date_fin"
    t.time "heure_fin"
    t.decimal "prix"
    t.string "type"
    t.string "filiere"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cle_representation"], name: "index_spectacles_on_cle_representation"
  end

end
