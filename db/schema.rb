# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_09_30_115437) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "telephone"
    t.string "adress"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compte_clients", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.string "type_compte"
    t.string "numero_compte"
    t.integer "code_compte"
    t.decimal "solde"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_compte_clients_on_client_id"
    t.index ["code_compte"], name: "index_compte_clients_on_code_compte", unique: true
    t.index ["numero_compte"], name: "index_compte_clients_on_numero_compte", unique: true
  end

  create_table "credits", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.decimal "montant"
    t.decimal "taux_interet"
    t.date "date_debut"
    t.date "date_fin"
    t.decimal "reste_non_paye"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_credits_on_client_id"
  end

  create_table "remboursements", force: :cascade do |t|
    t.bigint "credit_id", null: false
    t.decimal "montant_recu"
    t.date "date_jour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["credit_id"], name: "index_remboursements_on_credit_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "type_transaction"
    t.decimal "montant"
    t.bigint "compte_client_id", null: false
    t.date "date_transaction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compte_client_id"], name: "index_transactions_on_compte_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "virements", force: :cascade do |t|
    t.decimal "montant"
    t.date "date_jour"
    t.bigint "emeteur_id", null: false
    t.bigint "receveur_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["emeteur_id"], name: "index_virements_on_emeteur_id"
    t.index ["receveur_id"], name: "index_virements_on_receveur_id"
  end

  add_foreign_key "compte_clients", "clients"
  add_foreign_key "credits", "clients"
  add_foreign_key "remboursements", "credits"
  add_foreign_key "transactions", "compte_clients"
  add_foreign_key "virements", "compte_clients", column: "emeteur_id"
  add_foreign_key "virements", "compte_clients", column: "receveur_id"
end
