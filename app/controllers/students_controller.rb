class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades
        # byebug
        students = Student.all
        students_by_grade = students.sort_by {|student| student.grade}.reverse
        render json: students_by_grade
        # students_grades = students.map {|student| student.grade}
        # students_grades_asc = students_grades.sort
        # render json: students_grades_asc
    end
end


