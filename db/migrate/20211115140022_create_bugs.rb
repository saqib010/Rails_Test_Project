class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.string :screenshot
      t.string :type

      t.timestamps
    end
  end
end
