class AddColumnDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :breed, :string
  end
end
