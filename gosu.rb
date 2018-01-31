require 'bundler'
Bundler.require

class Tutorial < Gosu::Window
  def initialize
    super 600, 337
    self.caption = "Gosu Tutorial Game"
    @background_image = Gosu::Image.new(self, "media/Space.png", true)
  end

  def update
  end

  def draw
    @background_image.draw(0, 0, 0)
  end
end

Tutorial.new.show
