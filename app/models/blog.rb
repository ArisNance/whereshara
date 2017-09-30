class Blog < ActiveRecord::Base
     def to_param
     "#{id} #{title}".parameterize
     end
end
