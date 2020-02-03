class BoatingTest

    attr_accessor :test_name, :status, :instructor, :student

    @@all = []

    def initialize(test_name, status, instructor, student)
        @test_name = test_name
        @status = status
        @instructor = instructor
        @student = student

        @@all << self
    end

    # Class Methods
    def self.all
        @@all
    end
end
