class Peticion < ActiveRecord::Base
  after_initialize :init
  
  def init
     if self.new_record?
       self.status = 1
     end
  end
end
