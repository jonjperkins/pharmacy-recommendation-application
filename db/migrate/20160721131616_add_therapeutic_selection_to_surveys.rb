class AddTherapeuticSelectionToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :efficacy_therapeutic_selection, :integer
    add_column :surveys, :accepted_efficacy_therapeutic_selection, :integer
  end
end
