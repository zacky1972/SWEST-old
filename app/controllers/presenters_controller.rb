class PresentersController < ApplicationController
    def new
        @presenter = Presenter.new
    end
    
    def create
        @presenter = Presenter.new(presenter_params)
        
        if @presenter.save
            redirect_to @presenter
        else
            render 'new'
        end
    end
    
    def show
        @presenter = Presenter.find(params[:id])
    end
    
    def index
        @presenters = Presenter.all
    end
    
    def edit
        @presenter = Presenter.find(params[:id])
    end
    
    def update
        @presenter = Presenter.find(params[:id])
        
        if @presenter.update(presenter_params)
            redirect_to @presenter
        else
            render 'edit'
        end
    end
    
    def destroy
        @presenter = Presenter.find(params[:id])
        @presenter.destroy
        redirect_to presenters_path
    end
    
    private
    def presenter_params
        params.require(:presenter).permit(:name, :affiliation, :avatar)
    end
end
