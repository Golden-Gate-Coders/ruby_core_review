# Representing an employee as an array
# employee1 = ["Bill", "Gates", 100000, true]
# employee2 = ["Mark", "Zuckerberg", 50000, true]

# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."

# puts "#{employee1[0]} makes #{employee1[2]} a year."

# Representing an employee as a hash
employee1 = { "first_name" => "Bill", "last_name" => "Gates", "salary" => 100000 }

employee2 = {first_name: "Mark", last_name: "Zuckerberg", salary: 100000 }

puts employee1["first_name"] + " " + employee1["last_name"] + " makes " + employee1["salary"].to_s

puts employee2[:first_name] + " " + employee2[:last_name] + " makes " + employee2[:salary].to_s


