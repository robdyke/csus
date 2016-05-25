class Trust < ActiveRecord::Base
  # associations
  has_many :hospitals

  # validations
  validates :system_name, presence: true, uniqueness: true

end
