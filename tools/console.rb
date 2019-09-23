require_relative '../config/environment.rb' 

def reload
  load 'config/environment.rb'
end


# >>>>>>>>>>>>>>>>>>>>>>> varialbes for the Bakery LAB

# B1 = Bakery.new("Bakery1")
# B2 = Bakery.new("Bakery2")
# B3 = Bakery.new("Bakery3")
# B4 = Bakery.new("Bakery4")

# D1 = Dessert.new("Dissert1", B1)
# D2 = Dessert.new("Dissert2", B2)
# D3 = Dessert.new("Dissert3", B3)
# D4 = Dessert.new("Dissert4", B4)
# D5 = Dessert.new("Dissert5", B1)
# D6 = Dessert.new("Dissert6", B2)
# D7 = Dessert.new("Dissert7", B3)
# D8 = Dessert.new("Dissert8", B4)

# IN1 = Ingredient.new("Apple", D1, B1, 1)
# IN2 = Ingredient.new("Apple sauce", D1, B1, 2)
# IN3 = Ingredient.new("Cherry", D2, B2, 3)
# IN4 = Ingredient.new("Cherry drizzle", D2, B2, 4)
# IN5 = Ingredient.new("Apple mix", D3, B3, 5)
# IN6 = Ingredient.new("Cherry milk", D3, B3, 6)
# IN7 = Ingredient.new("Melon", D4, B4, 7)
# IN8 = Ingredient.new("Melon sauce", D4, B4, 8)
# IN9 = Ingredient.new("Melon juice", D5, B1, 9)
# IN10 = Ingredient.new("Chocolate", D6, B2, 10)
# IN11 = Ingredient.new("Chocolate milk", D7, B3, 11)
# IN12 = Ingredient.new("Apple drizzle", D8, B4, 12)




# >>>>>>>>>>>>>>>>>>>>>>> varialbes for the Lyft LAB

Dr1 = Driver.new("Driver1")
Dr2 = Driver.new("Driver2")
Dr3 = Driver.new("Driver3")

Pa1 = Passenger.new("Passenger1")
Pa2 = Passenger.new("Passenger2")
Pa3 = Passenger.new("Passenger3")

Ride1 = Ride.new(20, Pa1, Dr2)
Ride2 = Ride.new(30, Pa2, Dr1)
Ride3 = Ride.new(40, Pa3, Dr3)

Ride4 = Ride.new(20, Pa1, Dr2)
Ride5 = Ride.new(50, Pa2, Dr1)
Ride6 = Ride.new(60, Pa3, Dr3)

Ride7 = Ride.new(10, Pa1, Dr2)
Ride8 = Ride.new(40, Pa2, Dr1)
Ride9 = Ride.new(40, Pa3, Dr3)

### Dr1 >> 120, Dr2 >> 50, Dr3 >>140
### Pa1 >> 50, Pa2 >> 120, Pa3 >> 140

# >>>>>>>>>>>>>>>>>>>>>>> variables for the AirBnB LAB



# >>>>>>>>>>>>>>>>>>>>>>> variables for the School LAB

# jimmy_s = Student.new("jimmy")
# jane_s = Student.new("jane")

# tom_t = Teacher.new("tom")
# sandy_t = Teacher.new("sandie")

# english_c = ClassPeriod.new(tom_t,"English")
# algebra_c = ClassPeriod.new(sandy_t,"Algebra")
# spanish_c = ClassPeriod.new(tom_t,"Spanish")
# french_c = ClassPeriod.new(tom_t,"French")

# jimmy_s.assigning_student(english_c)
# jimmy_s.assigning_student(french_c)
# jimmy_s.assigning_student(algebra_c)

# jane_s.assigning_student(spanish_c)
# jane_s.assigning_student(algebra_c)

# tom_t.give_grade(jimmy_s, english_c, 100)
# tom_t.give_grade(jimmy_s, french_c, 80)
# sandy_t.give_grade(jimmy_s, algebra_c, 60)
# sandy_t.give_grade(jane_s, algebra_c, 80)
# tom_t.give_grade(jane_s, spanish_c, 100)



binding.pry
0