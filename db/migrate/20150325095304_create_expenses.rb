class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :group
      t.string :cost
      t.integer :amount

      t.timestamps null: false
    end
  end
end
