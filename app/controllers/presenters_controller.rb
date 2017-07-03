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
        begin
            @presenter = Presenter.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to presenters_path
        end
    end
    
    def index
        @presenters = Presenter.all
    end
    
    def edit
        begin
            @presenter = Presenter.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to presenters_path
        end
    end
    
    def update
        begin
            @presenter = Presenter.find(params[:id])

            if @presenter.update(presenter_params)
                redirect_to @presenter
            else
                render 'edit'
            end
            
        rescue ActiveRecord::RecordNotFound
            redirect_to presenters_path
        end
        
    end
    
    def destroy
        begin
            @presenter = Presenter.find(params[:id])
            @presenter.destroy
            redirect_to presenters_path
        rescue ActiveRecord::RecordNotFound
            redirect_to presenters_path
        end
    end
    
    private
    def presenter_params
        params.require(:presenter).permit(:name, :affiliation, :avatar)
    end
end
