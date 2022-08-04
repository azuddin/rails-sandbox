class TodosController < ApplicationController
    def index
        @todo = todo.all 
        render json: todoSerializer.new(@todo).serializable_hash.to_json
    end
    def show
        @todo = todo.find(params[:id])
        render json: todoSerializer.new(@todo).serializable_hash.to_json
    end
    def update
        @todo = todo.find(params[:id])
        @todo.update todo_params
        render json: todoSerializer.new(@todo).serializable_hash.to_json
    end
    def destroy
        todo.find(params[:id]).destroy
        render json: {message: 'OK' }.to_json, status: 200
     end
end
