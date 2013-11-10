class AddButtonTextToInvolvementAction < ActiveRecord::Migration
  def change
    add_column :involvement_actions, :button_text, :string
  end
end
