json.array!(@sus_scores) do |sus_score|
  json.extract! sus_score, :id
  json.url sus_score_url(sus_score, format: :json)
end
