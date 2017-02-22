class Mentor < User
  has_many :mentor_mentees
  has_many :mentees, through: :mentor_mentees

end
