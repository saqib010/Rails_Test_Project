class AlterDescriptionColUnique2 < ActiveRecord::Migration[6.1]
  def change
    remove_index :bugs, :description
  end
end
