class Rectangle < ApplicationRecord
	validates :width, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 75, less_than: 750 }
	validates :height, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 75, less_than: 750 }
	validates :color, format: { with: /\A#([0-9a-fA-F]{3}|[0-9a-fA-F]{6})\z/ }
end
