class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: }
  validates :summary, length: { maximum:}
end
