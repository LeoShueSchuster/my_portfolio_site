class CreateJobDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :job_descriptions do |t|
      t.string :description
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
