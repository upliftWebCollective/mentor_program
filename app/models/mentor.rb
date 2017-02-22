class Mentor < User
  has_many :mentor_mentees, foreign_key: 'mentor_id'
  has_many :mentees, through: :mentor_mentees

  has_many :mentor_tags, foreign_key: 'mentor_id'
  has_many :tags, through: :mentor_tags
end
