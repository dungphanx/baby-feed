class Baby < ApplicationRecord
  enum gender: { male: 1, female: 2 }
end
