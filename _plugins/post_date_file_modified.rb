module Jekyll
  class Post
    def full_path_to_source
      File.join(@base, @name)
    end
  end
end

module Jekyll
  class PostDateFileModified < Generator
    safe true
    priority :high

    def generate(site)
      require 'grit'
      repo = Grit::Repo.new(File.join(__FILE__, '..', '..'))
      site.posts.each do |post|
        if latest_commit = repo.log('master', post.full_path_to_source, :max_count => 1).first
          post.date = latest_commit.authored_date
        end
      end
    end
  end
end
