class AddBannerImageUrlToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :banner_image_url, :string
  end
end
