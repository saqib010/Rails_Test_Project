class Adddefaulttobugs < ActiveRecord::Migration[6.1]
  def change
     change_column_default :bugs, :bugtype, default: 0
  end
end
