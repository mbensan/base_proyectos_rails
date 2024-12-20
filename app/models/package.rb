class Package < ApplicationRecord
  belongs_to :destination
  has_many :activities

  def add_activity(name)
    puts "adding #{name}"
    act = Activity.create(name: name)
    self.activities.append(act)
  end
end
