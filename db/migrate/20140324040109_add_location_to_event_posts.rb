class AddLocationToEventPosts < ActiveRecord::Migration
  def change
    add_column :event_posts, :location, :text
  end
end
