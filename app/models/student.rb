# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def first_name
     first_name = self.name.split[0]
     
      if first_name == "Miss"
      first_name = self.name.split[1]
      
      elsif first_name == "Dr."
      first_name = self.name.split[1]
      
      elsif first_name == "Ms."
      first_name = self.name.split[1]
      
      elsif first_name == "Mr."
      first_name = self.name.split[1]
      
      elsif first_name == "Mrs."
      first_name = self.name.split[1]

      else
        first_name
     end 
  end 

end
