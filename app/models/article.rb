class Article
  include Mongoid::Document
  field :title, type: String
  field :body, type: String
  field :comments, type: Array
end
