class Cage
  include Mongoid::Document
  field :label, :type => String
  field :protocol_id, :type => Integer
  field :mouse_rack_id, :type => Integer
  field :row, :type => Integer
  field :column, :type => Integer
  field :user_id, :type => Integer
  field :created_at, :type => Time
  field :created_by, :type => Integer
  field :modified_on, :type => Time
  field :bodified_by, :type => Integer
end
