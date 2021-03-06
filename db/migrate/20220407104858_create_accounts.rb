class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :type
      t.text :body
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
