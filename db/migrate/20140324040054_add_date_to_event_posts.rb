class AddDateToEventPosts < ActiveRecord::Migration
  def change
    add_column :event_posts, :date, :date
  end
end
