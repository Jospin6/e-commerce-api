class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :type_transaction
      t.decimal :montant
      t.references :compte_client, null: false, foreign_key: true
      t.date :date_transaction

      t.timestamps
    end
  end
end
