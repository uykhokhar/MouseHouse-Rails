class MouseRack
  include Mongoid::Document
  field :room_id, :type => Integer
  field :label, :type => String
end
