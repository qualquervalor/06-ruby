class Car
	@@total_car_count = 0
	@@cars_per_color = {}

	# this is a class level method to access a class level variable
    def self.total_car_count
        @@total_car_count
    end

    def self.most_popular_color
    	
    	@@cars_per_color.sort_by { |col, cnt| cnt }.reverse[0].first

#     	maxim =0
#     	popular = ""
#     	@@cars_per_color.each { |k,v|
# if v> maxim
# 	maxim = v
# 	popular = k
# end
#     	}
#     	popular
    end

	def to_s()
		"I'm a car! I've driven #{@distance} and have #{@fuel} gallons gas left"
	end

	def initialize(color='red')
		@fuel = 10
		@distance = 0
		@@total_car_count +=1
		@color = color
		count = @@cars_per_color[color].nil? ? 0 : @@cars_per_color[color]
		@@cars_per_color[color] = count+1
	end


	def update_color(color)
		old = @color
		if (old == color); return; end;
		val = @@cars_per_color[old]
		val2 = @@cars_per_color[color].nil? ? 0 : @@cars_per_color[color]
		@@cars_per_color [old] = val -1
		@@cars_per_color [color] = val2 + 1

	end
	def drive(miles)
		if (@fuel - miles/20.0) >= 0
			@distance += miles
			@fuel -= miles/20.0
		else
			@distance += @fuel * 20.0
			@fuel = 0
			puts "You're out of gas!"
		end
	end

	def fuel_up()
		gallons_needed = 10.0 - @fuel
		puts "You must pay $#{3.5 * gallons_needed}"
		@fuel = 10.0
	end
end

car_a = Car.new()
car_b = Car.new()
puts car_a
puts car_b
car_a.drive(10)
puts car_a
puts car_b
car_a.drive(232)
car_b.drive(117)
puts car_a
puts car_b
puts Car.total_car_count
c1 = Car.new
puts Car.total_car_count
c2 = Car.new
puts Car.total_car_count