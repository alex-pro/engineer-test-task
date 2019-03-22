class Phone < ApplicationRecord
  NUMBER_START = 1111111111
  NUMBER_END = 9999999999

  validates :number, inclusion: { in: NUMBER_START..NUMBER_END }, uniqueness: true

  def self.registered_numbers
    pluck(:number)
  end
end
