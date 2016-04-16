class Post < ActiveRecord::Base
  # validates_presence_of :format_post

  
  belongs_to :user
  belongs_to :category

  mount_uploader :image, ImageUploader
  acts_as_taggable
  
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history, :finders]


  def should_generate_new_friendly_id?
    title_changed?
  end

  def format_post_enum
  	['new', 'slide','hot','rising']
  end
end
