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

end
