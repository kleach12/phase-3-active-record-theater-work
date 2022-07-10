class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    if self.hired == false
      self.hired = true
      puts self.hired
      self.save
    else
      puts self.hired
    end

  end

end