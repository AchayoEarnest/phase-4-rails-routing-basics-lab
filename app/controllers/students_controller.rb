class StudentsController < ApplicationController

    def index
        student = Student.all
        render json: student
    end

    def highest_grade
        @student =Student.all.sort_by {|grade| grade.custom_method}.reverse
        render json: student
    end

end