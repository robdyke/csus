class Review < ActiveRecord::Base
  # associations
  has_one :system
  belongs_to :user

  # validations
end
