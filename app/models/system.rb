class System < ActiveRecord::Base
  # associations
  has_many :reviews

  # validations
  validates :system_name, presence: true, uniqueness: true
end
