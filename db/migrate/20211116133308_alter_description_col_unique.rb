class AlterDescriptionColUnique < ActiveRecord::Migration[6.1]
  def change
    add_index :bugs, :title, unique: {unique: true}
  end
end
