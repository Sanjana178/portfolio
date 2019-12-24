class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.text :title
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
