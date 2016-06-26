class System < ActiveRecord::Base
  # associations
  belongs_to :system_supplier
  has_many :reviews
  has_many :system_implementations

  # validations
  validates :system_name, presence: true

  # imports system data from a CSV file initially for testing but also possibly for admin use
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      begin
        System.create! row.to_hash
      rescue
        puts row
      end
    end
  end

end
