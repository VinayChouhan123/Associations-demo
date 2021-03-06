class CreateAccountHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :account_histories do |t|
      t.integer :accnumber
      t.string :name
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
