class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :caption
      t.belongs_to :celebrity, foreign_key: true
      t. attachment :image
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
