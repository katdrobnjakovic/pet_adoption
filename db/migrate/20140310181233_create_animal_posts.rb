class CreateAnimalPosts < ActiveRecord::Migration
  def change
    create_table :animal_posts do |t|
      t.string :name
      t.text :description
      t.date :birth
      t.text :vaccinated
      t.text :fertile

      t.timestamps
    end
  end
end
