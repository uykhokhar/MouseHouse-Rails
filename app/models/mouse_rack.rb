class MouseRack
  include Mongoid::Document
  field :room_id, :type => Integer
  field :label, :type => String
  field :columns, :type => Integer
  field :rows, :type => Integer
  field :user_id => Integer
  
  belongs_to :user    
end
