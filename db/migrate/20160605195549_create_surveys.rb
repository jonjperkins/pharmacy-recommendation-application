class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      
      t.integer "year"
      t.integer "times_helped"
      t.boolean "intervention_made"
      t.boolean "contribution_made"
      t.string  "recommendation_description"
      t.string  "efficacy_recommendations"
      t.string  "safety_recommendations"
      t.string  "contribution_to_care"

      t.timestamps null: false
    end
  end
end
