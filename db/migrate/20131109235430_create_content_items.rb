class CreateContentItems < ActiveRecord::Migration
  def change
    create_table :content_items do |t|
      t.text :about
      t.text :quote
      t.string :quote_author
      t.string :twitter_widget_id
      t.text :trailer_iframe
      t.text :trailer_caption
      t.text :download_link
      t.text :download_image

      t.timestamps
    end
  end
end
