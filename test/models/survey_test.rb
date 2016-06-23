require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
 
  test "empty survey is not valid" do
    survey = Survey.new(:year => '', :times_helped => '', :intervention_made => '',
                        :contribution_made => '', :recommendation_description => '',
                        :efficacy_recommendations => [], :safety_recommendations => [],
                        :contribution_to_care => [])
    assert_not survey.valid?
  end
  
  test "survey with year and times helped is valid" do
    survey = Survey.new(:year => 4, :times_helped => 67, :intervention_made => '',
                        :contribution_made => '', :recommendation_description => '',
                        :efficacy_recommendations => [], :safety_recommendations => [],
                        :contribution_to_care => [])
    assert survey.valid?
  end
  
  test "survey with year, times_helped and intervention_made is not valid without recommendation" do 
    survey = Survey.new(:year => 4, :times_helped => 67, :intervention_made => true,
                        :contribution_made => false, :recommendation_description => '',
                        :efficacy_recommendations => [], :safety_recommendations => [],
                        :contribution_to_care => [])
    assert_not survey.valid?
  end
  
  test "survey with year, times_helped, and contribution_made is not valid without recommendation" do 
    survey = Survey.new(:year => 4, :times_helped => 67, :intervention_made => false,
                        :contribution_made => true, :recommendation_description => '',
                        :efficacy_recommendations => [], :safety_recommendations => [],
                        :contribution_to_care => [])
    assert_not survey.valid?
  end
  
  test "survey with year, times_helped, and intervention_made is valid with recomendation" do 
    survey = Survey.new(:year => 4, :times_helped => 67, :intervention_made => true,
                        :contribution_made => false, :recommendation_description => 'text',
                        :efficacy_recommendations => [], :safety_recommendations => [],
                        :contribution_to_care => [])
    assert survey.valid?
  end
  
  test "survey with year, and contribution_made is valid with recomendation" do 
    survey = Survey.new(:year => 4, :times_helped => 67, :intervention_made => false,
                        :contribution_made => true, :recommendation_description => 'text',
                        :efficacy_recommendations => [], :safety_recommendations => [],
                        :contribution_to_care => [])
    assert survey.valid?
  end
  
end
