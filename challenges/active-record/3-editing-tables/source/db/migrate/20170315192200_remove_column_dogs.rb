class RemoveColumnDogs < ActiveRecord::Migration
  def change
    remove_column :dogs, :weight
  end
end
