class RemoveColTypeFromBugs < ActiveRecord::Migration[6.1]
  def change
    remove_column :bugs, :bugtype
  end
end
