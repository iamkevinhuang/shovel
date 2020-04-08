class VotesController < ApplicationController
  def create
  	@story = Story.find(params[:story_id])
  	@story.votes.create

  	respond_to do |f|
  		f.html {redirect_to @story}
  		f.js
  	end
  end

end
