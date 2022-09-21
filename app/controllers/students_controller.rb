class StudentsController < ApplicationController

    def index
        student = Student.all
        render json: student
    end

    def highest_grade
        highest_grade = Student.MAXIMUM(:grade)
        render json: highest_grade
    end

end