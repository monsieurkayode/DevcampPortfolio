class PopulateSlugColumnInPortfolios < ActiveRecord::Migration[5.2]
  def change
    Rake::Task['slug:add_slug_to_portfolios'].invoke
  end
end
