class MainController < ApplicationController

# def index
#   @stories = Story.all
# end


def index
  @stories = Story.where('upvotes > ?', 4)
                  .where('created_at > ?', Date.today)
                  .where('created_at < ?', Date.today + 1)
end

end
