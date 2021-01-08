class School
    attr_accessor :roster, :name, :grade
    
    def initialize(name)
      @name = name
      @roster = {}
    end
  
    def add_student(student_name, grade)
      @roster[grade] ||= []
      @roster[grade] << student_name
    end
  
    def grade(grade)
      @roster.select { |g, student_hash| return student_hash if g == grade}
    end
  
    def sort
      sorted_hash = {}
      self.roster.sort.each do |grade_array|
          sorted_hash[grade_array[0]] = grade_array[1].sort
      end
      sorted_hash
    end   
  end