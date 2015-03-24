json.array!(@thesubjects) do |thesubject|
  json.extract! thesubject, :id, :subNumber, :age
  json.url thesubject_url(thesubject, format: :json)
end
