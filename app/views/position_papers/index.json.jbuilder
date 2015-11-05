json.array!(@position_papers) do |position_paper|
  json.extract! position_paper, :id
  json.url position_paper_url(position_paper, format: :json)
end
