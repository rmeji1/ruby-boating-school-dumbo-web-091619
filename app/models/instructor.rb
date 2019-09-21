class Instructor
  attr_reader :name
  @@all = [] 

  def initialize(name)
    @name = name
  end

  def pass_student(student, test_name)
    test = find_test(student, test_name)
    update_or_create_test(test, test_name, "passed")
  end

  def fail_student(student, test_name)
    test = find_test(student, test_name)
    update_or_create_test(test, test_name, "failed")
  end

  def self.all 
    @@all
  end

  private 
  def find_test(student, test_name)
    BoatingTest.all.find do |test|
      test.name == test_name && test.student == student
    end
  end

  def update_or_create_test(test, test_name, status)
    if test != nil 
      test.status = status
    else
      student.add_boating_test(test_name, status, self)
    end
  end
end
