class CoursesController < ApplicationController
    def show
        course = Course.find_by(id: params[:id])
        render json: course, include: :lessons
    end

    def index 
        courses = Course.all
        render json: courses
    end
end
