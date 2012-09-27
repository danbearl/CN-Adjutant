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

ActiveRecord::Schema.define(:version => 20120927024419) do

  create_table "change_logs", :force => true do |t|
    t.date     "date"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "company"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.text     "notes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expenses", :force => true do |t|
    t.date     "date"
    t.string   "name"
    t.text     "description"
    t.decimal  "amount"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "invoice_items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "amount"
    t.integer  "invoice_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "invoices", :force => true do |t|
    t.date     "date_issued"
    t.date     "date_due"
    t.date     "date_paid"
    t.decimal  "amount_due"
    t.integer  "client_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "notes", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "statement_of_work"
    t.date     "estimated_start_date"
    t.date     "actual_start_date"
    t.date     "estimated_completion_date"
    t.date     "actual_completion_date"
    t.decimal  "rate"
    t.decimal  "hours"
    t.decimal  "cost_to_date"
    t.decimal  "estimated_cost"
    t.integer  "client_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "title"
    t.integer  "note_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "time_logs", :force => true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.decimal  "total_time"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
