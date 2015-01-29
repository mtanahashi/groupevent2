class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.datetime :organization_date

      t.timestamps
    end
  end
end
