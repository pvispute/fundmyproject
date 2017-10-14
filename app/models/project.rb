# == Schema Information
#
# Table name: projects
#
#  id               :integer          not null, primary key
#  title            :string
#  desc             :string
#  slug             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  banner_image_url :string
#  student_id       :integer
#  published        :boolean          default(FALSE)
#  published_at     :datetime
#

class Project < ApplicationRecord
	extend FriendlyId
  friendly_id :title, use: :slugged
  
  belongs_to :student
  scope :most_recent, -> {order(id: :desc)}
  scope :published, -> {where(published: true)}

  def should_generate_new_friendly_id?
  	title_changed?
  end

end
