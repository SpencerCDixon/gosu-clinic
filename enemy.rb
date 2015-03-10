require 'pry'

class Enemy
  def initialize(window, x, y)
    @window = window
    @x = x
    @y = y
    @image = Gosu::Image.new(@window, 'img/enemy.png')
  end

  def draw
    @image.draw(@x, @y, 10)
  end

  def update
    @x += 2
  end
end
