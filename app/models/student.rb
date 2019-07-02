class Student < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true, uniqueness: true

  def to_s
    self.first_name + " " + self.last_name
  end
end