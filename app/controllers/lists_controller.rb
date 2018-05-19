class ListsController < ApplicationController

 def index
 	@lists = List.all
 end

 def show
 	@list = List.find(params[:id])
 	@user = current_user
 end

 def new
 	@list = List.new
 end

 def create
 	@list = List.new(list_params)
 	@list.user_id = current_user.id
 	# @list = current_user.list.new(list_params)
 	if @list.save
 		flash[:notice] = "Your list has been saved!"
 	redirect_to @list 
 	else
 		render :new
 	end
 end

 def edit 
 	@list = List.find(params[:id])

 end 

 def update
 	@list = List.find(params[:id])
 		if @list.update(list_params)
 			flash[:notice] = "list updated"
 			redirect_to @list
 		else
 			render :edit 
 		end
 end

 def search 
	@lists = List.all

	filter_params(params).each do |key, value|
		@lists = @lists.public_send(key, value) if value.present?
		respond_to do |format|
			format.js
		end
	end
end

 def destroy
 	@list = List.find(params[:id])
 	@list.destroy 
 	flash[:notice] = "list deleted!"
 	redirect_to lists_path 
 end 

 private

 def list_params
 	params.require(:list).permit(:title, :task1, :task2, :task3, :task4, :task5,  :avatar, :user_id)
 end

 def filter_params(params)
 	params.slice(:title)
 end

end