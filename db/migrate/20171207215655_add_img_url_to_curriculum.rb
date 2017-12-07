class AddImgUrlToCurriculum < ActiveRecord::Migration[5.1]
  def change
    add_column :curriculums, :img_url, :string
  end
end
