class CreateCovers < ActiveRecord::Migration[6.1]
  def change
    create_table :covers do |t|
      t.string :image_link

      t.timestamps
    end
  end
end
