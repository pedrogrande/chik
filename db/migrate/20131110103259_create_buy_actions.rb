class CreateBuyActions < ActiveRecord::Migration
  def change
    create_table :buy_actions do |t|
      t.string :title
      t.text :description
      t.string :link
      t.string :priority

      t.timestamps
    end
  end
end
