class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end



  def planet_names
    planets_names_array = @planets.map {|planet| planet.name }
    return planets_names_array
  end

# chickens.find { |chicken| chicken[0] == "H" }

    def get_planet_by_name(planet_name)

      @planets.find { |planet|  planet.name == planet_name}
    end

    def get_largest_planet
      diameter_array = @planets.map {|planet| planet.diameter}
      biggest_planet_diameter = diameter_array.sort.last
      @planets.find { |planet|  planet.diameter == biggest_planet_diameter}
    end

    def get_smallest_planet
      diameter_array = @planets.map {|planet| planet.diameter}
      biggest_planet_diameter = diameter_array.sort.first
      @planets.find { |planet|  planet.diameter == biggest_planet_diameter}
    end

    def get_planets_with_no_moons
      @planets.find_all {|planet| planet.number_of_moons == 0}
    end

    def get_planets_with_more_moons(number)
      planets_with_requested_number_of_moons = @planets.find_all {|planet| planet.number_of_moons > number}
      planets_with_requested_number_of_moons.map {|planet| planet.name }
    end

    def get_number_of_planets_closer_than(distance)
      planets_with_requested_distance_from_the_sun = @planets.find_all {|planet| planet.distance_from_sun < distance }
      planets_with_requested_distance_from_the_sun.length
    end

    def get_total_number_of_moons
      moon_array = @planets.map {|planet| planet.number_of_moons}
      total_moons = moon_array.reduce { |running_total, number| running_total + number}
      return total_moons
    end

    def get_planet_names_sorted_by_increasing_distance_from_sun
      distance_from_sun_array = @planets.map {|planet| planet.distance_from_sun}
      sorted_distance = distance_from_sun_array.sort
      @planets.find_all { |planet| planet.}
    end

end
