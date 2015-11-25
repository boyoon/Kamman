class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :items
      t.string :description
      t.decimal :cost

      t.timestamps
    end
  end
end
