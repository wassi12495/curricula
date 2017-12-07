class CreateTableCurriculumFollower < ActiveRecord::Migration[5.1]
  def change
    create_table :followers do |t|
      t.integer :user_id
      t.integer :curriculum_id
    end
  end
end
