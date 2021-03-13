class CreateBeAVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :be_a_volunteers do |t|
      t.string :Name
      t.string :Roll_Number
      t.string :Branch
      t.string :Contact_Number
      t.string :Recruitment_Year
      t.string :Status
      t.string :Projects
      t.string :Role
      t.string :Skill_Set
      t.string :Remarks

      t.timestamps
    end
  end
end
