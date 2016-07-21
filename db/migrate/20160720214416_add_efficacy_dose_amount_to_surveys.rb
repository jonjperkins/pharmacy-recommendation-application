class AddEfficacyDoseAmountToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :efficacy_dose_amount, :integer
  end
end
