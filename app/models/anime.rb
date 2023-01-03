class Anime < ApplicationRecord
  belongs_to: favorites
  belongs_to: user
end
