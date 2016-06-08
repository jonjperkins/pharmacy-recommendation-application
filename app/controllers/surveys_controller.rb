class SurveysController < ApplicationController
    
    def new
        @survey = Survey.new
    end
    
    def create
        @survey = Survey.create(survey_params)
        redirect_to @survey
    end
    
    def show
        @survey = Survey.find_by(id: params[:id])
    end
    
    def update
    end
    
    private
    
      def survey_params
          params.require(:survey).permit(:id, :year, :times_helped, :intervention_made,
                                         :contribution_made, :recommendation_description,
                                         :efficacy_recommendations => [], :contribution_to_care => [], :safety_recommendations => [])
      end
    
    
end
