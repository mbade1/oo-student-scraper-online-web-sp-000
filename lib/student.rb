class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    self.send("name=", all[:name])
    self.send("location=", all[:location])
    self.send("profile_url=", all[:profile_url])
    @@all << self    
  end

  def self.create_from_collection(students_array)
    
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    
  end
end

