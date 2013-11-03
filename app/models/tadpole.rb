class Tadpole < ActiveRecord::Base
  belongs_to :pond
  belongs_to :frog
end
