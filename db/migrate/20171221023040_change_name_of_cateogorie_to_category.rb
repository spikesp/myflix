class ChangeNameOfCateogorieToCategory < ActiveRecord::Migration
  def change
    change_table :videos do |t|
      t.rename :categorie_id, :category_id
    end
  end
end
