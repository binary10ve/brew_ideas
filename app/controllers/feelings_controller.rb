class FeelingsController < ApplicationController

def create
	@idea = Idea.find(params[:id])
	@idea.update_feeling(params[:feeling], current_user.id)
end


end