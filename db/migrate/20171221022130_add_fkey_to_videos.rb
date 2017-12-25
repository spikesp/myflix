class AddFkeyToVideos < ActiveRecord::Migration
  def change
    add_reference(:videos, :categorie)
  end
end
