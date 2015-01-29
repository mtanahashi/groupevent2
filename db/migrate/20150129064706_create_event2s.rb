class CreateEvent2s < ActiveRecord::Migration
  def change
    create_table :event2s do |t|
      t.string :name
      t.text :description
      t.datetime :event_date
      t.references :group, index: true

      t.timestamps
    end
  end
end
