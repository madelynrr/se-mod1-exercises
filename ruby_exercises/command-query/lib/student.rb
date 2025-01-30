class Student
    attr_reader :grade

    GRADES = ["A", "B", "C", "D" ,"F"]

    def initialize
        @grade = GRADES[2]
    end

    def study
        return @grade if @grade == GRADES[0]
        @grade = GRADES[GRADES.index(@grade) - 1]
    end

    def slack_off
        return @grade if @grade == GRADES[-1]
        @grade = GRADES[GRADES.index(@grade) + 1]
    end
end
