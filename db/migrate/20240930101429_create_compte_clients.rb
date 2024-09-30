class CreateCompteClients < ActiveRecord::Migration[7.0]
  def change
    create_table :compte_clients do |t|
      t.references :client, null: false, foreign_key: true
      t.string :type_compte
      t.string :numero_compte
      t.integer :code_compte
      t.decimal :solde

      t.timestamps
    end
    add_index :compte_clients, :numero_compte,                unique: true
    add_index :compte_clients, :code_compte,                  unique: true
  end
end
