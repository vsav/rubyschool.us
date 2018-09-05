class Airport
  
  attr_reader :name
  attr_reader :planes

  def initialize(name)
    @name = name
    @planes =[]
	end

	def add_plane(plane)
    @planes << plane
	end
end

class Plane
  attr_reader :model

	def initialize(model)
		@model = model
	end
end

airport1 = Airport.new ("Sheremetievo")
airport2 = Airport.new ("Vnukovo")

airports =[]
airports.push airport1
airports.push airport2

plane1 = Plane.new ("A320")
plane2 = Plane.new ("MiG-29")
plane3 = Plane.new ("Boeing-777")
plane4 = Plane.new ("Su-35")
plane5 = Plane.new ("AH-9")
plane6 = Plane.new ("Su-27")

airport1.add_plane plane1
airport1.add_plane plane2
airport1.add_plane plane3

airport2.add_plane plane4
airport2.add_plane plane5
airport2.add_plane plane6

airports.each do |airport|
	puts "Airport: #{airport.name}"
  # show planes in this airport
  airport.planes.each do |plane|
    puts "Plane: #{plane.model}"	
  end
end
