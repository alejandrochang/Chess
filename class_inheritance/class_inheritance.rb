class Employee
  attr_accessor :boss
  attr_reader :name, :title, :salary,
  
  def initialize(name, title, salary, boss=nil)
    @name = name
    @title = title
    @salary = salary
    self.boss = boss
  end
  
  def bonus(multiplier)
    self.salary * multiplier
  end
  
  def boss=(boss)
    @boss = boss
    boss.add_employee(self) unless boss.nil?
    
    boss
  end
end

class Manager < Employee
  attr_reader :employees
  def initialize
    @employees = []
    super
  end
  
  def bonus(multiplier)
    @salary * multiplier
  end
  
  def add_employee(subordinate)
    employees << subordinate
    employees
  end
  
  def bonus(multiplier)
    self.total_subsalary * multiplier
  end
  
  def total_subsalary
    total_subsalary = 0
    self.employees.each do |employee|
      if employee.is_a?(Manager)
        total_subsalary += employee.salary + employee.total_subsalary
      else
        total_subsalary += employee.salary
      end
    end

    total_subsalary
  end
end