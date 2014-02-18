class CreateAnimalPosts < ActiveRecord::Migration
  def change
    create_table :animal_posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
