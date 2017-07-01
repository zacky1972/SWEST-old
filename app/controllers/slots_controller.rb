class SlotsController < ApplicationController
    def new
        @slot = Slot.new
    end
    
    def create
        @slot = Slot.new(slot_params)
        if @slot.save
            redirect_to @slot
        else
            render 'new'
        end
    end

    def show
        @slot = Slot.find(params[:id])
    end
    
    def index
        @slots = Slot.all
    end
    
    def edit
        @slot = Slot.find(params[:id])
    end
    
    def update
        @slot = Slot.find(params[:id])
        
        if @slot.update(slot_params)
            redirect_to @slot
        else
            render 'edit'
        end
    end
    
    def destroy
        @slot = Slot.find(params[:id])
        @slot.destroy
        redirect_to slots_path
    end
    
    def dup
        @slot = (Slot.find(params[:id])).dup
        if @slot.save
            redirect_to edit_slot_path(@slot)
        else
            render 'edit'
        end
    end
    
    private 
    def slot_params
        params.require(:slot).permit(:name, :room, :from, :to)
    end
end
