class WorkshopsController  < ApplicationController
    def index
        @workshops = Workshop.all
    end
    def show
        @workshop = Workshop.find_by(params[ :id])
    end
end
