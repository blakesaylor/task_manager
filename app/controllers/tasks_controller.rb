# app/controllers/tasks_controller.rb

class TasksController < ApplicationController
    def index
        @tasks = ['Task 1', 'Task 2', 'Task 3']
    end

    def new
    end

    def create
        binding.pry
        task = Task.new({
            title: params[:task][:title],
            description: params[:task][:description]
        })
        binding.pry
        task.save
        binding.pry
        redirect_to '/tasks'
    end
end