class StudentsController < ApplicationController

    def index
        student = Student.all
        render json: student
    end

    def grades
        student =Student.all.sort_by(&:grade).reverse
        render json: student
    end

end