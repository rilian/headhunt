class Developer < ActiveRecordBase
  validates_uniqueness_of :name

end