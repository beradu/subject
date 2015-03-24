class Visit
  include Mongoid::Document

  #visit 1
  field :dov1
  field :icfDt
  field :sex
  field :cont1

  #visit 2
  field :dov2
  field :vtlSigns
  field :plseRate
  field :weight
  field :height

  embedded_in :thesubject, :inverse_of => :visits
end
