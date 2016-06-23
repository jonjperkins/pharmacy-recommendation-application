require 'test_helper'

class SurveysEditTest < ActionDispatch::IntegrationTest

  def setup 
    @survey = surveys(:survey_one)
  end
  
  test "unsuccessful edit" do
    get edit_survey_path(@survey)
    assert_template 'surveys/edit'
    patch survey_path(@survey), survey: { year: '', times_helped: '', intervention_made: '',
                                          contribution_made: '', recommendation_description: '', 
                                          efficacy_recommendations: '', safety_recommendations: '',
                                          contribution_to_care: '' }
    assert_not flash.empty?
    assert_template 'surveys/edit'
  end
  
  test "successful edit" do 
    get edit_survey_path(@survey)
    assert_template 'surveys/edit'
    patch survey_path(@survey), survey: { year: "3", times_helped: "22", intervention_made: "false",
                                          contribution_made: "false", recommendation_description: "[]", 
                                          efficacy_recommendations: "[]", safety_recommendations: "[]",
                                          contribution_to_care: "[]" }
    assert_not flash.empty?
    assert_redirected_to root_url
  end
  
  

end
