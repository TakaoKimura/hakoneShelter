require 'csv'

csv = CSV.read('db/fixtures/place.csv')
csv.each do |place|
  Place.seed(:id) do |s|
    s.id = place[0]
    s.title = place[1]
	s.description = place[2]
	s.address = place[3]
    s.latitude = place[4]
	s.longitude = place[5]
  end
end
