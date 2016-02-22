class TodosController < ApplicationController

	def index
		@todos = Todos.where(done: false)
		@todone = Todos.where(done: true)
	end

	def new
		@todo = Todos.new
	end

	

	def todo_params
		params.require(:todos).permit(:name, :done)
	end


	def create
		@todo = Todos.new(todo_params)

		if @todo.save
			redirect_to todos_path(@todo), :notice => "Your todo item was created"
		else
			render "new"
		end
	end

	def update
		@todo = Todos.find(params[:id])

		if @todo.update_attribute(:done, true)
			redirect_to root_path, :notice => "Your todo item was marked as done"
		else
			redirect_to root_path, :notice => "Your todo item was !NOT! marked as done"
		end
	end

	def destroy
		@todo = Todos.find(params[:id])
		@todo.destroy
		redirect_to root_path, :notice => "TODO item was deleted"
	end






end
