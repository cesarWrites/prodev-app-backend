class LessonController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        if params[:course_id]
            course = Course.find(params[:course_id])
            lessons = course.lessons
        else
            lessons = Lesson.all
        end
        render json: lessons, include: :course
    end

    def show 
        lesson = Lesson.find(params[:id])
        render json: lesson, include: :course
    end

    private
    def lesson_params
        params.permit(:name, :description, course_id)
    end

    def render_not_found_response
        render json: { error: "Review not found" }, status: :not_found
    end
end

end
