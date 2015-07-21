class StoriesController < ApplicationController

def index
  @stories = Story.all
end

  # GET /story/:id
def show
  get_story
end

# POST /stories
def create
  @story = Story.new(white_listed_parameters)
  if @story.save
      flash[:notice] = "Story saved successfully!"
      # redirect_to stories_path
      redirect_to(@story)
  else
    render :new
  end
end


def new
  @story = Story.new()
end

def get_story
  begin
    @story = Story.find(params[:id])
  rescue
    redirect_to stories_path
  end
end

  # White lists the corresponding parameters
  def white_listed_parameters
    params
      .require(:story)
      .permit(:title, :link, :upvotes, :category)
  end

end

