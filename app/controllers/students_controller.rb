class StudentsController < ApplicationController
  def index
    @collection = Student.all
  end
end
