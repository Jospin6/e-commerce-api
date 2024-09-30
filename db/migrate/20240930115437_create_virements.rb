class CreateVirements < ActiveRecord::Migration[7.0]
  def change
    create_table :virements do |t|
      t.decimal :montant
      t.date :date_jour
      t.references :emeteur, null: false, foreign_key: { to_table: :compte_clients }
      t.references :receveur, null: false, foreign_key: { to_table: :compte_clients }

      t.timestamps
    end
  end
end
