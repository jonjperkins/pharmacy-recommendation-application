require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
 
  test "should return a csv file" do 
    get :index, format: :csv
    assert_response :success
    assert_equal "text/csv", response.content_type
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should redirect to newly created survey's show page upon successful submission" do 
    assert_difference('Survey.count') do
      post :create, survey: {:year => 4, :times_helped => 67, :intervention_made => false,
                        :contribution_made => true, :recommendation_description => 'text',
                        :efficacy_recommendations => [], :safety_recommendations => [],
                        :contribution_to_care => [] }
    end
    assert_redirected_to survey_path(assigns[:survey])
  end
  
  test "should render surveys/new on unsuccessful survey submission" do 
    assert_no_difference('Survey.count') do
      post :create, survey: {:year => '', :times_helped => '', :intervention_made => false,
                        :contribution_made => true, :recommendation_description => 'text',
                        :efficacy_recommendations => [], :safety_recommendations => [],
                        :contribution_to_care => [] }
    end
    assert_template "layouts/application"
    assert_template "surveys/new"
    assert_template "shared/_error_messages"
  end

end