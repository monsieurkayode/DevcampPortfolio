class UpdateStatusForBlogs < ActiveRecord::Migration[5.2]
  def change
    Rake::Task['status:set_blogs_status_to_published'].invoke
  end
end
