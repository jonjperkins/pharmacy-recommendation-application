class AddIndicationEducationToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :efficacy_indication_education, :integer
    add_column :surveys, :accepted_efficacy_indication_education, :integer
  end
end
