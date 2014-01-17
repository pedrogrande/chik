class AddContentToDownload < ActiveRecord::Migration
  def change
    add_column :downloads, :content, :text
  end
end
