class Developer < ActiveRecord::Base
  before_validation :cleanup

  serialize :speciality, JSON

  validates_uniqueness_of :name
  validates_presence_of :name

private

  def cleanup
    speciality = [] if speciality.blank?
  end
end