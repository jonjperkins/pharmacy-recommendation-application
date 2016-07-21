class AddDoseFrequencyToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :efficacy_dose_not_frequent_enough, :integer
    add_column :surveys, :accepted_efficacy_dose_not_frequent_enough, :integer
  end
end
