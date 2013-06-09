class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  accepts_nested_attributes_for :comments, allow_destroy: true,
    reject_if: lambda{ |attrs| attrs[:destroy] }
end
