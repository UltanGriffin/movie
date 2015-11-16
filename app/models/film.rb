class Film < ActiveRecord::Base
validates :title, :plot, :image, :director, :year, presence: true
validates :title, uniqueness: true
validates :image, allow_blank: true, format: {
  with: %r{\.(gif|jpg|png|jpeg)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
}
end
