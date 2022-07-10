class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map do |t|
      t.actor
    end
  end

  def locations 
    self.auditions.map do |t|
      t.location 
    end
  end

  def lead
    array_of_results = self.auditions.filter do |t|
                            t.hired == true
                          end

    if array_of_results != 0
      array_of_results.first
    else
       'no actor has been hired for this role'
    end

  end
      
  def understudy
    array_of_results = self.auditions.filter do |t|
                            t.hired == true
                          end

    if array_of_results != 0
      array_of_results[1]
    else
       'no actor has been hired for this role'
    end

  end

end