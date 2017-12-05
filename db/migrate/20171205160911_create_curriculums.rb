class CreateCurriculums < ActiveRecord::Migration[5.1]
  def change
    create_table :curriculums do |t|
      t.string :title
      t.text :description
      t.integer :user_id


      t.timestamps
    end
  end
end
