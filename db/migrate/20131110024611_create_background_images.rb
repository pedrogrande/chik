class CreateBackgroundImages < ActiveRecord::Migration
  def change
    create_table :background_images do |t|
      t.string :image

      t.timestamps
    end
  end
end
