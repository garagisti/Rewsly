class MainController < ApplicationController

# This will show all the stories entered on the main page.
# def index
#   @stories = Story.all
# end

# This will show stories with >4 upvotes and
# Stories that have been posted recently
# def index
#   @stories = Story.where('upvotes > ?', 4)
#                   .where('created_at > ?', Date.today)
#                   .where('created_at < ?', Date.today + 1)
# end

# This will show stories with >4 upvotes
def index
  @stories = Story.where('upvotes > ?', 4)
end


end
