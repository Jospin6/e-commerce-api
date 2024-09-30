class CreateCredits < ActiveRecord::Migration[7.0]
  def change
    create_table :credits do |t|
      t.references :client, null: false, foreign_key: true
      t.decimal :montant
      t.decimal :taux_interet
      t.date :date_debut
      t.date :date_fin
      t.decimal :reste_non_paye

      t.timestamps
    end
  end
end
