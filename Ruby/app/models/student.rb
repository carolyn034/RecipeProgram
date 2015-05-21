require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :age, numericality: { greater_than: 5 }
  validates :email, uniqueness: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+{2,}\z/}
  validates :phone, length: { minimum: 10}
  validates :phone, numericality: { only_integer: true }


  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
    age
  end

end
