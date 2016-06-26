class SystemSupplier < ActiveRecord::Base
  has_many :systems
  has_many :system_implementations
end
