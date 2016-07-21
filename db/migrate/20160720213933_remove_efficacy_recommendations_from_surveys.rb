class RemoveEfficacyRecommendationsFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :efficacy_recommendations, :string
  end
end
