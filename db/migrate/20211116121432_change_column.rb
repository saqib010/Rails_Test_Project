class ChangeColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :bugs, :description, :text, unique: true
  end
end
