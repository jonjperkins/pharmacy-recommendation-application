class AddImmunizationRecommendationToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :efficacy_immunization_recommendation, :integer
    add_column :surveys, :accepted_efficacy_immunization_reccomendation, :integer
  end
end
