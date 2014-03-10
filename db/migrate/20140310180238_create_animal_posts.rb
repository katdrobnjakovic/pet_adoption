class CreateAnimalPosts < ActiveRecord::Migration
  def change
    create_table :animal_posts do |t|
      t.string :name
      t.text :descirption
      t.string :bith
      t.text :vaccinated
      t.text :fertile

      t.timestamps
    end
  end
end
