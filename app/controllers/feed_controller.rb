class FeedController < ApplicationController
  def feed
    x = User.where(username: params.fetch("username"))
    @x = x.feed
    render(template: "feed_html/feed")
  end

end
