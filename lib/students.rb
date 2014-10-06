class Students
  def all
    [
      {name: "Bob", age: 10},
      {name: "Sue", age: 10},
      {name: "Greg", age: 15},
      {name: "Amanda", age: 8},
      {name: "Steve", age: 22},
    ]
  end

  def average_age
    ages_total = 0
    all.each do |student|
      ages_total = ages_total + (student[:age])
    end
    ages_total/all.length
  end

  def name_string
    name_arry = []
    all.each do |student|
      name_arry.push(student[:name])
    end
    name_arry.join(' ')
  end

  def find_first_older_than(age)
    all.each do |student|
      if student[:age] > age
        return student
      end
    end
  end

  def any_older_than?(age)
    all.any?{|student| student[:age] > age}
  end

  def find_student(student)
   if all.include?(student)
     student
   end
  end

  def student_present?(student)
    all.include?(student)
  end

  def grouped_by_age
    all.group_by{|student| student[:age]}.each{|_, v| v.map!{|student| student[:name]}}
  end

end