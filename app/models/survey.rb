class Survey < ActiveRecord::Base
    belongs_to :user
   
    def safety_recommendations=(val)
      write_attribute(:safety_recommendations, val.join(", "))
    end
    
    def efficacy_recommendations=(val)
      write_attribute(:efficacy_recommendations, val.join(", "))
    end
    
    def contribution_to_care=(val)
      write_attribute(:contribution_to_care, val.join(", "))
    end
    
    def self.to_csv(options = {})
      attributes = %w{ year times_helped intervention_made contribution_made 
                       recommendation_description efficacy_recommendations 
                       safety_recommendations contribution_to_care }
      CSV.generate(headers: true) do |csv|
        csv << attributes
        all.each do |survey|
          csv << survey.attributes.values_at(*attributes)
        end
      end
    end

end
