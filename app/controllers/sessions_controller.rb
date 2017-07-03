class SessionsController < ApplicationController
    def new
        @session = Session.new
    end
    
    def create
        @session = Session.new(session_params)
        
        if @session.save
            redirect_to @session
        else
            render 'new'
        end
    end
    
    def show
        begin
            @session = Session.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to sessions_path
        end
    end
    
    def index
        @sessions = Session.all
    end
    
    def edit
        begin
            @session = Session.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to sessions_path
        end
    end
    
    def update
        begin
            @session = Session.find(params[:id])
            if @session.update(session_params)
                redirect_to @session
            else
                render 'edit'
            end
            
        rescue ActiveRecord::RecordNotFound
            redirect_to sessions_path
        end
    end
    
    def destroy
        begin
            @session = Session.find(params[:id])
            @session.destroy
            redirect_to sessions_path
        rescue ActiveRecord::RecordNotFound
            redirect_to sessions_path
        end
    end
    
    private
    def session_params
        params.require(:session).permit(:title, :abstract, :introduction, :slot_id)
    end

end
