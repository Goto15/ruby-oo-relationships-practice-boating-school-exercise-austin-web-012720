class Student

    attr_accessor :first_name

    def initialize(first_name)
        @first_name = first_name
    end

    # Class Methods
    def self.all
        BoatingTest.all.map{|x| x.student}.uniq
    end

    def self.find_student(student_name)
        self.all.select{|x| x.first_name == student_name}
    end

    # Instance Methods
    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(test_name, status, instructor, self)
    end

    def grade_percentage
        tests_array = BoatingTest.all.find_all{|x| x.student == self}
        num_tests = tests_array.map{|x| x.status}.count.to_f
        passing_count = tests_array.select{|x| x.status == "passed"}.count.to_f
        return (passing_count / num_tests)
    end
end
