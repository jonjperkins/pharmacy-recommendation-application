class SurveysController < ApplicationController
  
  def new
    @survey = Survey.new
  end
    
  def create
    @survey = Survey.create(survey_params)
    if @survey.save
      flash[:success] = "Your survey responses have been submitted. If you 
                         need to edit your submissions, use the edit button below."
      redirect_to @survey
    else
      render 'surveys/new'
    end
  end
    
  def index
    @surveys = Survey.order(:year)
      respond_to do |format|
        format.html
        format.csv { send_data @surveys.to_csv, 
                     filename: "surveys - #{Date.today}.csv" }
      end
  end
    
  def show
    @survey = Survey.find(params[:id])
  end
    
  def update
    @survey = Survey.find(params[:id])
    if @survey.update_attributes(survey_params)
      flash[:success] = "Your survey responses were successfully updated."
      redirect_to root_url
    else
      flash[:danger] = "Some information is still needed."
      render 'edit'
    end
  end
    
  def edit
    @survey = Survey.find(params[:id])
  end
    
  private
    
    def survey_params
        params.require(:survey).permit(:id, :year, :times_helped, 
                                       :intervention_made,
                                       :contribution_made, 
                                       :recommendation_description,
                                       :efficacy_dose_amount,
                                       :accepted_efficacy_dose_amount,
                                       :efficacy_dose_not_frequent_enough,
                                       :accepted_efficacy_dose_not_frequent_enough,
                                       :efficacy_indication_education,
                                       :accepted_efficacy_indication_education,
                                       :efficacy_therapeutic_selection,
                                       :accepted_efficacy_therapeutic_selection,
                                       :efficacy_immunization_recommendation,
                                       :accepted_efficacy_immunization_reccomendation,
                                       :none_today, :accepted_none_today,
                                       :efficacy_other, :accepted_efficacy_other,
                                       :contribution_to_care => [], 
                                       :safety_recommendations => [])
    end
    
end
