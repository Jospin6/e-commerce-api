class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.string :telephone
      t.string :adress
      t.string :email

      t.timestamps
    end
  end
end
