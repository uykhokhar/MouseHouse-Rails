class BreedingPair
  include Mongoid::Document
  field :sire_id, :type => Integer
  field :dam_id, :type => Integer
end
