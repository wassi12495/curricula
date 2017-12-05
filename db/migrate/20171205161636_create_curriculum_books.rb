class CreateCurriculumBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :curriculum_books do |t|
      t.integer :book_id
      t.integer :curriculum_id

      t.timestamps
    end
  end
end
