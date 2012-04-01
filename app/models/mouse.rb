class Mouse
  include Mongoid::Document
  field :strain, :type => String
  field :ear_tag, :type => String
  field :gender, :type => String
  field :genotype, :type => String
  field :date_of_birth, :type => Date
  field :litter_id, :type => Integer
  field :cage_id, :type => Integer
end
