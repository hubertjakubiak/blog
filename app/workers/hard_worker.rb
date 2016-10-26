class HardWorker
  include Sidekiq::Worker
  def perform(task)
    sleep 5

    case task
    when 'active'
      active_all_posts
    when 'archived'
      archive_all_posts
    end
    
  end

  def archive_all_posts
    Post.all.each do |post|
      post.archived!
    end
  end

  def active_all_posts
    Post.all.each do |post|
      post.active!
    end
  end
end