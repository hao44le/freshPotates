class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_attached_file :image, styles: { medium: "400x600#" }, default_url: "missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
