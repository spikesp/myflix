class AddLargeCoverAndSmallCoverToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :large_cover, :string
    add_column :videos, :small_cover, :string
    remove_column :videos, :url_small
    remove_column :videos, :url_large
  end
end
