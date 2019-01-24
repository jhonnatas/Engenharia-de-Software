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

ActiveRecord::Schema.define(version: 2019_01_24_135951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "distribuitors", force: :cascade do |t|
    t.string "rsocial", limit: 100, null: false
    t.string "cnpj", null: false
    t.string "phone", limit: 20
    t.string "address", limit: 200
    t.string "neighborhood", limit: 120
    t.string "city", limit: 80
    t.string "state", limit: 20
    t.string "zipcode", limit: 14
    t.string "complement", limit: 45
    t.string "contact", limit: 80
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
