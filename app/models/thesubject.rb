class Thesubject
  include Mongoid::Document
  field :subNumber, type: String
  field :age, type: BigDecimal

  embeds_many :visits
end
