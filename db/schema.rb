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

ActiveRecord::Schema.define(version: 20181114121233) do

  create_table "bills", force: :cascade do |t|
    t.string   "service"
    t.string   "reference_number"
    t.decimal  "amount",                                precision: 18, scale: 0
    t.string   "mpesa_number"
    t.string   "contact_number"
    t.string   "email"
    t.string   "payment_mode"
    t.date     "due_date"
    t.string   "status"
    t.string   "third_party_ref_no"
    t.string   "channel_response"
    t.string   "user_action"
    t.string   "channel_used"
    t.text     "message",            limit: 2147483647
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
  end

end
