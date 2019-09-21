class BoatingTest
  attr_accessor :student, :instructor, :name, :status
  @@all = [] 

  def initialize(student, instructor, name, status)
    @student = student
    @instructor = instructor
    @status = status
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end
