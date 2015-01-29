class CreateGroup2s < ActiveRecord::Migration
  def change
    create_table :group2s do |t|
      t.string :name
      t.text :description
      t.datetime :organization_date
      t.references :group_id, index: true

      t.timestamps
    end
  end
end
