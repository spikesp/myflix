class AddTimeStampToVideos < ActiveRecord::Migration
  def change
    add_timestamps(:videos)
  end
end
