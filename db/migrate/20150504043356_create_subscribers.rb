class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
