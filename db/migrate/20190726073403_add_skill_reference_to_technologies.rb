class AddSkillReferenceToTechnologies < ActiveRecord::Migration[5.2]
  def change
    add_column :technologies, :skill_id, :integer, foreign_key: { references: :skills }
  end
end
