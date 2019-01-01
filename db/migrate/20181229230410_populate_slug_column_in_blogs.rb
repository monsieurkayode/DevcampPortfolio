class PopulateSlugColumnInBlogs < ActiveRecord::Migration[5.2]
  def change
    Rake::Task['slug:add_slug_to_blogs'].invoke
  end
end
