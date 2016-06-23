class System < ActiveRecord::Base
  # associations
  belongs_to :system_supplier
  has_many :reviews
  has_many :system_implementations

  # validations
  validates :system_name, presence: true
end
