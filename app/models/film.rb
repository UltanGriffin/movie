class Film < ActiveRecord::Base
validates :title, :plot, :image, presence: true
validates :title, uniqueness: true
validates :image, allow_blank: true, format: {
  with: %r{\.(gif|jpg|png)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
}
end
