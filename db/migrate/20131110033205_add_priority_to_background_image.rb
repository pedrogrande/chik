class AddPriorityToBackgroundImage < ActiveRecord::Migration
  def change
    add_column :background_images, :priority, :integer
  end
end
