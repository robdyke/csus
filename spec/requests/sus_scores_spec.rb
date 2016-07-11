require 'rails_helper'

RSpec.describe "SusScores", type: :request do
  describe "GET /sus_scores" do
    it "works! (now write some real specs)" do
      get sus_scores_path
      expect(response).to have_http_status(200)
    end
  end
end
