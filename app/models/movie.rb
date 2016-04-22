class Movie < ActiveRecord::Base
  include PgSearch
  pg_search_scope :search_by_rating, :against => :rating
  belongs_to :user
  has_many :reviews
  has_attached_file :image, styles: { medium: "400x600#" }, default_url: "missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
