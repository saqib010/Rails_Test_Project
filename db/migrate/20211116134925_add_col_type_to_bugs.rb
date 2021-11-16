class AddColTypeToBugs < ActiveRecord::Migration[6.1]
  def change
     add_column :bugs, :bugtype, :boolean
  end
end
