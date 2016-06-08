class ChangeYearDataTypeToSurveys < ActiveRecord::Migration
  def change
    change_column :surveys, :year, :string
  end
end
