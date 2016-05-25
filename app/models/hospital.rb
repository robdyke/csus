class Hospital < ActiveRecord::Base
  # associations
  belongs_to :trust

  # validations
  validates :hospital_name, presence: true, uniqueness: true
end
