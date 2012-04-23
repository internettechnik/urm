class SeverityOfissuefoundbyPerson < ActiveRecord::Base
  belongs_to :issue
  belongs_to :person 
end
