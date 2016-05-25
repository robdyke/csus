class Trust < ActiveRecord::Base
  # associations
  has_many :hospitals

  # validations
  validates :trust_name, presence: true, uniqueness: true

end
