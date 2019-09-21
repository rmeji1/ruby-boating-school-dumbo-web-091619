class Student
  attr_accessor :first_name
  @@all = [] 

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, instructor, test_name, test_status)
  end

  def grade_percentage
    passed_tests.count.to_f / tests.count
  end

  def passed_tests
    tests.select do |test|
      test.status == "passed"
    end
  end

  def tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end
end
