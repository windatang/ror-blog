class Toplic
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :linkwith, type: Object
end
