class Opnion < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  belongs_to :pprocess
end
