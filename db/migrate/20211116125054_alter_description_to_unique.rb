class AlterDescriptionToUnique < ActiveRecord::Migration[6.1]
  def change
    add_index :bugs, :description, unique: {unique: true}
  end
end
