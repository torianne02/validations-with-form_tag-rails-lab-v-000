class Post < ActiveRecord::Base
  validate :title, presence: true
  validate :content, length: { minimum: 100 }
  validate :category, inclusion: %w(Fiction Non-Fiction)
end
