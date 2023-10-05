class FeedController < ApplicationController
  def feed
    @user = User.where(username: params.fetch("username")).first
    @x = @user.feed
    @type = "Feed"
    render(template: "feed_html/feed")
  end
  def discover
    @type = "Discover"
    @user = User.where(username: params.fetch("username")).first
    @x = @user.discover
    render(template: "feed_html/feed")

  end

end
