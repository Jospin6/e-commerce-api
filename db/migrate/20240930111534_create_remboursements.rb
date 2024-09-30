class CreateRemboursements < ActiveRecord::Migration[7.0]
  def change
    create_table :remboursements do |t|
      t.references :credit, null: false, foreign_key: true
      t.decimal :montant_recu
      t.date :date_jour

      t.timestamps
    end
  end
end
