class TodosController < ApplicationController

	def index
		@todos = Todo.where(done: false)
		@todone = Todo.where(done: true)
	end

	def new
		@todo = Todo.new
	end


	def todo_params
		@todo = Todo.new(todo_params)

		if @todo.save
			redirect_to todo_index_path, :notice => "Your todo item was created"
		else
			render "new"
		end
	end







end
