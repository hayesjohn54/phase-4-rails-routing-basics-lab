class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        grade_list = Student.all.sort {|a, b| b.grade <=> a.grade}
        render json: grade_list
    end

end
