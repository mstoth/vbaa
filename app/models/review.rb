class Review
  field :group_id, type: Integer
  field :venue_id, type: Integer
  field :concert_id, type: Integer
  field :numstars, type: Integer
  field :comment, type: String
  field :user_id, type: Integer
  field :published, type: Mongoid::Boolean
end
