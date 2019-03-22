class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :number, limit: 8

      t.timestamps
    end
  end
end
