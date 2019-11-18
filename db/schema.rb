# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_12_235437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.bigint "estado_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "rua"
    t.string "numero"
    t.string "bairro"
    t.bigint "cidade_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cidade_id"], name: "index_enderecos_on_cidade_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grupo_produtos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "movimento_estoques", force: :cascade do |t|
    t.date "data"
    t.integer "quantidade"
    t.bigint "pessoa_id", null: false
    t.bigint "operacao_id", null: false
    t.bigint "produto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["operacao_id"], name: "index_movimento_estoques_on_operacao_id"
    t.index ["pessoa_id"], name: "index_movimento_estoques_on_pessoa_id"
    t.index ["produto_id"], name: "index_movimento_estoques_on_produto_id"
  end

  create_table "operacaos", force: :cascade do |t|
    t.string "descricao"
    t.integer "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.bigint "endereco_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["endereco_id"], name: "index_pessoas_on_endereco_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.bigint "unidade_id", null: false
    t.bigint "grupo_produto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grupo_produto_id"], name: "index_produtos_on_grupo_produto_id"
    t.index ["unidade_id"], name: "index_produtos_on_unidade_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string "descricao"
    t.string "sigla"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cidades", "estados"
  add_foreign_key "enderecos", "cidades"
  add_foreign_key "movimento_estoques", "operacaos"
  add_foreign_key "movimento_estoques", "pessoas"
  add_foreign_key "movimento_estoques", "produtos"
  add_foreign_key "pessoas", "enderecos"
  add_foreign_key "produtos", "grupo_produtos"
  add_foreign_key "produtos", "unidades"
end
