class Litter
  include Mongoid::Document
  field :breeding_pair_id, :type => Integer
  field :date_of_birth, :type => Date
end
