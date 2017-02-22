class Mentee < User
  has_many :mentor_mentees, foreign_key: 'mentee_id'
  has_many :mentors, through: :mentor_mentees
end
