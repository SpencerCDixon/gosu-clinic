require 'gosu'
require_relative 'enemy'

class Game < Gosu::Window

  def initialize
    super(1000, 1000, false) # takes the height, weidth, and T/F for fullscreen

    @background = Gosu::Image.new(self, 'img/background.png')
    # Takes two arguments the Game (self) and url of image

    @enemy = Enemy.new(self, 0, 500)
  end

  def draw
    @background.draw(0,0,0)
    @enemy.draw
    # gets called 60 times a second
  end

  def update
    # gets called 60 times a second
    @enemy.update
  end
end

game = Game.new
game.show
