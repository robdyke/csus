json.array!(@reviews) do |review|
  json.extract! review, :id, :review_title, :review_body, :sus_score, :csus_score, :star_rating
  json.url review_url(review, format: :json)
end
