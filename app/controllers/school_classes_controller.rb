class SchoolClassesController < ApplicationController

before_action :get_class, only: [:show, :edit, :update]

def new
    @school_class = SchoolClass.new
end

def create
    @school_class = SchoolClass.create(school_params)

    redirect_to school_class_path(@school_class)
    
end

def show
end

def edit
end

def update
    @school_class.update(school_params)
    @school_class.save

    redirect_to school_class_path(@school_class)
end

private

def get_class
    @school_class = SchoolClass.find_by(id: params[:id])
end

def school_params
    params.require(:school_class).permit(:title, :room_number)
end

end