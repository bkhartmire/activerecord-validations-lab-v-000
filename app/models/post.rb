class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Nonfiction)}
  validate :post_must_be_clickbait

  def post_must_be_clickbait
    if title.none?(["Won't Believe", "Secret", "Top", "Guess"])
  end
end
