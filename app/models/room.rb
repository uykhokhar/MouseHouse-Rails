class Room
  include Mongoid::Document
  field :building_id, :type => Integer
  field :label, :type => String
end
