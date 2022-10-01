class CourseController < ApplicationController
    def show
        course = Course.find_by(id: params[:id])
        render json: course, include: :lessons
    end
end
