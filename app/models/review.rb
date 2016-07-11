class Review < ActiveRecord::Base
  # associations
  belongs_to :system
  belongs_to :trust
  belongs_to :user
  has_one :sus_score, dependent: :destroy
  has_one :clinical_sus_score, dependent: :destroy

  # validations
  validates :sus_score, numericality: {
    greater_than_or_equal_to: 2.5,
    less_than_or_equal_to: 100 } #lowest possible SUS score = 1 * 2.5, highest possible SUS score = 40 * 2.5
  validates :csus_score, numericality: { greater_than_or_equal_to: 2.5 } #lowest possible cSUS score = 1 * 2.5

  # imports trust data from a CSV file initially for testing but also possibly for admin use
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      begin
        Review.create! row.to_hash
      rescue
        puts row
      end
    end
  end
end
