# # 1. Representing an employee as an array
# employee1 = ["Bill", "Gates", 100000, true]
# employee2 = ["Mark", "Zuckerberg", 50000, true]

# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee1[0]} makes #{employee1[2]} a year."

# # 2. Representing an employee as a hash
# employee1 = { "first_name" => "Bill", "last_name" => "Gates", "salary" => 100000 }
# employee2 = {first_name: "Mark", last_name: "Zuckerberg", salary: 100000 }

# puts employee1["first_name"] + " " + employee1["last_name"] + " makes " + employee1["salary"].to_s
# puts employee2[:first_name] + " " + employee2[:last_name] + " makes " + employee2[:salary].to_s


# 3. Representing an employee as an object

class Employee
  attr_reader :first_name, :last_name
  attr_writer :active
  attr_accessor :salary

  def initialize(input_hash = {})
    @first_name = input_hash[:first_name] || input_hash[:last_name]
    @last_name = input_hash[:last_name] || "Last"
    @salary = input_hash[:salary] || 0
    @active = input_hash[:active] || false
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end

  def full_name
    # if the last name ends with an 's', then add 'esquire'
    # name = "Test"
    # name[0] = "T"
    # name[1] = "e"
    # name[-1] = "t"
    if last_name[-1] == "s"
      puts "#{first_name} #{last_name}, Esquire"
    else
      puts "#{first_name} #{last_name}"
    end
  end
end

employee1 = Employee.new()

employee2 = Employee.new({salary: 100000, active: true, first_name: "Mark", last_name: "Zuckerberg"})

employee1.full_name
employee2.full_name


# employee1.print_info
# employee1.give_annual_raise
# employee1.print_info

# puts employee1.salary
# puts employee1.first_name
# puts employee1.last_name

# # Same thing as employee1.salary=(999)
# employee1.salary = 999
# puts employee1.salary

# 1. Simple solution
employees_array = []
(0..100).each do
  employee = Employee.new(first_name: "Mark")
  employees_array << employee
  puts employee.first_name
end


# 2. Each with index example
(0..100).each do |i|
  employees_array << Employee.new(first_name: "Mark")
  puts employees_array[i].first_name
end





