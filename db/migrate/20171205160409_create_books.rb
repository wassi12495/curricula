class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :year
      t.string :publisher
      t.integer :subject_id

      t.timestamps
    end
  end
end
