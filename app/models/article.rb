class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :text, length: {maximum: 250, minimum: 5}
end
