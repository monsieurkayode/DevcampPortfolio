namespace :slug do
  desc 'Adds slugs to already saved blogs in the database'
  task add_slug_to_blogs: :environment do
    Blog.find_each(&:save)
  end

  desc 'Adds slugs to already saved portfolio items in the database'
  task add_slug_to_portfolios: :environment do
    Portfolio.find_each(&:save)
  end
end
