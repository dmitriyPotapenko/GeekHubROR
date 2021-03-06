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

ActiveRecord::Schema.define(version: 20_171_121_081_515) do
  create_table 'admins', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admins_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admins_on_reset_password_token', unique: true
  end

  create_table 'cities', force: :cascade do |t|
    t.string 'name'
    t.integer 'country_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'avatar'
    t.index ['country_id'], name: 'index_cities_on_country_id'
  end

  create_table 'continents', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'avatar'
  end

  create_table 'countries', force: :cascade do |t|
    t.string 'name'
    t.integer 'continent_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'avatar'
    t.index ['continent_id'], name: 'index_countries_on_continent_id'
  end

  create_table 'employees', force: :cascade do |t|
    t.string 'first_name'
    t.string 'second_name'
    t.integer 'position_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'avatar'
    t.index ['position_id'], name: 'index_employees_on_position_id'
  end

  create_table 'entertainments', force: :cascade do |t|
    t.string 'kind_of'
    t.integer 'hotel_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'avatar'
    t.index ['hotel_id'], name: 'index_entertainments_on_hotel_id'
  end

  create_table 'hotels', force: :cascade do |t|
    t.string 'name'
    t.integer 'city_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'avatar'
    t.index ['city_id'], name: 'index_hotels_on_city_id'
  end

  create_table 'positions', force: :cascade do |t|
    t.string 'name'
    t.integer 'hotel_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['hotel_id'], name: 'index_positions_on_hotel_id'
  end

  create_table 'tourists', force: :cascade do |t|
    t.string 'first_name'
    t.string 'second_name'
    t.integer 'hotel_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['hotel_id'], name: 'index_tourists_on_hotel_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'full_name'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  create_table 'works', force: :cascade do |t|
    t.string 'name'
    t.integer 'employee_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['employee_id'], name: 'index_works_on_employee_id'
  end
end
