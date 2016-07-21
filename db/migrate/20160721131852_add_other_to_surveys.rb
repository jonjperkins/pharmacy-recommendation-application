class AddOtherToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :efficacy_other, :integer
    add_column :surveys, :accepted_efficacy_other, :integer
  end
end
