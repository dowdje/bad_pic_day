class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :caption
      t.belongs_to :celebrity, foreign_key: true
      t. attachment :image

      t.timestamps
    end
  end
end
