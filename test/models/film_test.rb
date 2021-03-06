require 'test_helper'

class FilmTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
test "film attributes must not be empty" do
  film = Film.new
  assert film.invalid?
  assert film.errors[:title].any?
  assert film.errors[:director].any?
  assert film.errors[:year].any?
  assert film.errors[:plot].any?
  assert film.errors[:image].any?
end

test "image must point to an image file" do
  film = films(:one)
  ok = %w{ frog.gif frog.jpg frog.png FROG.PNG fRoG.PnG
           http://a.b.c/x/y/z/frog.png frog.jpeg }
  bad = %w{ frog.doc frog.png/less frog.png.less }

  ok.each do |url|
    film.image = url
    assert film.valid?, "#{url} should be a valid image url"
  end

  bad.each do |url|
    film.image = url
    assert film.invalid?, "#{url} shouldn't be a valid image url"
  end
end
test "film is not valid without a unique title" do
  film = Film.new(:title       => films(:ruby).title,
			:director => "xxx", 
			:year => "xxx", 
                        :plot => "xxx",  
                        :image   => "barney.gif")

  assert film.invalid?
  assert_equal ["has already been taken"], film.errors[:title]
end
end
