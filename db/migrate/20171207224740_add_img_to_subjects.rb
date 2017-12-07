class AddImgToSubjects < ActiveRecord::Migration[5.1]
  def change
    add_column :subjects, :img_url, :string
  end
end
