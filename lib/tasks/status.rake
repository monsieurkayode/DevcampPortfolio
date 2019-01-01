namespace :status do
  desc 'Sets all blog posts status to published'
  task set_blogs_status_to_published: :environment do
    Blog.find_each(&:published!)
  end

  desc 'Sets all blog posts status to draft'
  task set_blogs_status_to_draft: :environment do
    Blog.find_each(&:draft!)
  end
end
