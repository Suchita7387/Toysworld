class Toyescontroller < ApplicationController
    def new
        @toyes=Toyes.new
    end

    def create
        @toy=Toyes.new(Toyes_param)
        if @toyes.save
            redirect_to root
            if render "new"
            end
        end
    end
end

           
      