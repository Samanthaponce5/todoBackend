class ListsController < ApplicationController


def index 
    @lists = List.all
    render json: @lists
end

def show 
    @list = list.find(params[:id])
    render json: @list
end

end

def new 
    @list = List.new
end

def create 
    @list = List.create(list_params)
    if @list 
        render json: @list 
    else 
        render json: @list.errors
    end
    
end

def edit 
@list = List.find(params[:id])
end

def destroy 
@list = List.find(params[:id])
@list.destroy
render json: { message: 'Task deleted!' }
end

private 

def list_params
    params.require(:list).permit(:task)
end