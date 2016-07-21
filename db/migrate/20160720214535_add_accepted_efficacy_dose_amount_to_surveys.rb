class AddAcceptedEfficacyDoseAmountToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :accepted_efficacy_dose_amount, :integer
  end
end
