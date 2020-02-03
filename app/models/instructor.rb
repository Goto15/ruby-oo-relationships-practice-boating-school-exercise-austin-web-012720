class Instructor

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    # Class Methods
    def self.all
        BoatingTest.all.select{|x| x.instructor}
    end

    # Instance Methods
    def pass_student(student, test_name)
        test = BoatingTest.all.find{|x| (x.test_name == test_name) && (x.student == student)}
        test.status = "passed"
    end

    def fail_student(student, test_name)
        test = BoatingTest.all.find{|x| (x.test_name == test_name) && (x.student == student)}
        test.status = "failed"
    end

end
