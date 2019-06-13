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

ActiveRecord::Schema.define(version: 2019_06_13_012637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alugues", force: :cascade do |t|
    t.decimal "preco"
    t.decimal "decimal"
    t.boolean "status"
    t.datetime "data_retirada"
    t.datetime "data_devolucao"
    t.integer "moto_id"
    t.integer "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.integer "cpf"
    t.string "telefone"
    t.string "observacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motos", force: :cascade do |t|
    t.string "marca"
    t.string "tipo"
    t.string "modelo"
    t.boolean "disponivel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parceiros", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sinistros", force: :cascade do |t|
    t.decimal "preco"
    t.decimal "decimal"
    t.boolean "status"
    t.integer "tipo"
    t.text "descrição"
    t.integer "alugue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
