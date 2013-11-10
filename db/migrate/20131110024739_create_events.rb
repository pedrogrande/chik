class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.text :desciption
      t.string :location
      t.string :suburb
      t.string :postcode
      t.string :link
      t.string :cost

      t.timestamps
    end
  end
end
