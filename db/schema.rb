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

ActiveRecord::Schema.define(version: 20160419065841) do

  create_table "day_to_day", id: false, force: :cascade do |t|
    t.integer "code",          limit: 4
    t.string  "name",          limit: 255
    t.string  "m_place",       limit: 255
    t.string  "name33",        limit: 255
    t.string  "date",          limit: 255
    t.float   "price",         limit: 53
    t.float   "before_ratio1", limit: 53
    t.float   "before_ratio2", limit: 53
    t.float   "price_b",       limit: 53
    t.float   "price_s",       limit: 53
    t.float   "price_h",       limit: 53
    t.float   "price_l",       limit: 53
    t.integer "volume",        limit: 8
    t.integer "t_value",       limit: 8
    t.integer "m_capi",        limit: 8
  end

  add_index "day_to_day", ["code"], name: "code", unique: true, using: :btree

  create_table "day_to_day2", id: false, force: :cascade do |t|
    t.integer "code",          limit: 4
    t.string  "name",          limit: 255
    t.string  "m_place",       limit: 255
    t.string  "name33",        limit: 255
    t.string  "date",          limit: 255
    t.float   "price",         limit: 53
    t.float   "before_ratio1", limit: 53
    t.float   "before_ratio2", limit: 53
    t.float   "price_b",       limit: 53
    t.float   "price_s",       limit: 53
    t.float   "price_h",       limit: 53
    t.float   "price_l",       limit: 53
    t.integer "volume",        limit: 8
    t.integer "t_value",       limit: 8
    t.integer "m_capi",        limit: 8
  end

  add_index "day_to_day2", ["code"], name: "code", unique: true, using: :btree

  create_table "friends", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id",    limit: 4,   null: false
    t.integer  "user_id2",   limit: 4,   null: false
  end

  create_table "gyousyu33_master", id: false, force: :cascade do |t|
    t.string "code33", limit: 20
    t.string "name33", limit: 20
  end

  add_index "gyousyu33_master", ["code33"], name: "code33", unique: true, using: :btree

  create_table "k_code", primary_key: "code", force: :cascade do |t|
    t.integer "date",    limit: 4
    t.string  "name",    limit: 255
    t.integer "code33",  limit: 4
    t.string  "name33",  limit: 255
    t.string  "m_place", limit: 255
  end

  add_index "k_code", ["code"], name: "code", unique: true, using: :btree

  create_table "m_edinet_document_statuses", primary_key: "status_id", force: :cascade do |t|
    t.string   "title",      limit: 255,             null: false
    t.string   "detail",     limit: 255,             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "del_flag",   limit: 4,   default: 0, null: false
  end

  create_table "m_edinet_submitters", primary_key: "edinet_code", force: :cascade do |t|
    t.string   "submitter",       limit: 255,             null: false
    t.integer  "securities_code", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "del_flag",        limit: 4,   default: 0, null: false
  end

  add_index "m_edinet_submitters", ["securities_code"], name: "securities_code_index", unique: true, using: :btree

  create_table "t_edinet_document_statuses", force: :cascade do |t|
    t.integer  "document_id", limit: 4,                 null: false
    t.integer  "status",      limit: 4
    t.text     "notes",       limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "del_flag",    limit: 4,     default: 0, null: false
  end

  add_index "t_edinet_document_statuses", ["document_id"], name: "document_id_index", unique: true, using: :btree
  add_index "t_edinet_document_statuses", ["status"], name: "status", using: :btree

  create_table "t_edinet_documents", force: :cascade do |t|
    t.date     "filing_date"
    t.string   "document_title", limit: 255
    t.string   "edinet_code",    limit: 255,               null: false
    t.string   "other_info",     limit: 255
    t.string   "pdf_url",        limit: 512
    t.string   "xbrl_url",       limit: 512
    t.string   "comp_url",       limit: 512
    t.text     "notes",          limit: 65535,             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "del_flag",       limit: 4,     default: 0, null: false
  end

  add_index "t_edinet_documents", ["edinet_code"], name: "edinet_code", using: :btree

  create_table "t_final_account_non_consolidated_members", force: :cascade do |t|
    t.integer  "securities_code",                                  limit: 4
    t.integer  "current_fiscal_year",                              limit: 4,                           null: false
    t.string   "accounting_standards",                             limit: 255,                         null: false
    t.integer  "net_sales",                                        limit: 8
    t.integer  "operating_income",                                 limit: 8
    t.integer  "ordinary_income",                                  limit: 8
    t.integer  "net_income",                                       limit: 8
    t.integer  "earnings_per_share_summary",                       limit: 8
    t.integer  "diluted_earnings_per_share_summary",               limit: 8
    t.integer  "net_assets_per_share_summary",                     limit: 8
    t.integer  "total_assets_summary",                             limit: 8
    t.integer  "capital_stock_summary",                            limit: 8
    t.decimal  "equity_to_asset_ratio_summary",                                precision: 5, scale: 4
    t.decimal  "rate_of_return_on_assets_summary",                             precision: 5, scale: 4
    t.decimal  "rate_of_return_on_equity_summary",                             precision: 5, scale: 4
    t.decimal  "rate_of_ordinary_income_return_on_assets_summary",             precision: 5, scale: 4
    t.integer  "total_number_of_issued_shares_summary",            limit: 8
    t.datetime "created_at",                                                                           null: false
    t.datetime "updated_at",                                                                           null: false
  end

  create_table "t_final_accounts", force: :cascade do |t|
    t.integer  "securities_code",                                  limit: 4
    t.integer  "current_fiscal_year",                              limit: 4,               null: false
    t.string   "accounting_standards",                             limit: 255,             null: false
    t.integer  "net_sales",                                        limit: 8
    t.integer  "operating_income",                                 limit: 8
    t.integer  "ordinary_income",                                  limit: 8
    t.integer  "net_income",                                       limit: 8
    t.integer  "earnings_per_share_summary",                       limit: 8
    t.integer  "diluted_earnings_per_share_summary",               limit: 8
    t.integer  "net_assets_per_share_summary",                     limit: 8
    t.integer  "total_assets_summary",                             limit: 8
    t.integer  "capital_stock_summary",                            limit: 8
    t.float    "equity_to_asset_ratio_summary",                    limit: 53
    t.float    "rate_of_return_on_assets_summary",                 limit: 53
    t.float    "rate_of_return_on_equity_summary",                 limit: 53
    t.float    "rate_of_ordinary_income_return_on_assets_summary", limit: 53
    t.integer  "total_number_of_issued_shares_summary",            limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "del_flag",                                         limit: 4,   default: 0, null: false
  end

  add_index "t_final_accounts", ["securities_code"], name: "securities_code", using: :btree

  add_foreign_key "m_edinet_submitters", "day_to_day", column: "securities_code", primary_key: "code", name: "m_edinet_submitters_ibfk_1"
  add_foreign_key "t_edinet_document_statuses", "m_edinet_document_statuses", column: "status", primary_key: "status_id", name: "t_edinet_document_statuses_ibfk_2"
  add_foreign_key "t_edinet_document_statuses", "t_edinet_documents", column: "document_id", name: "t_edinet_document_statuses_ibfk_1"
  add_foreign_key "t_final_accounts", "day_to_day", column: "securities_code", primary_key: "code", name: "t_final_accounts_ibfk_1"
end
