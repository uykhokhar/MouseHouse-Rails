class Building
  include Mongoid::Document
  field :institution_id, :type => Integer
  field :label, :type => String
end
