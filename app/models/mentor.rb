class Mentor < User
  has_many :mentor_mentees, foreign_key: 'mentor_id'
  has_many :mentees, through: :mentor_mentees

end
