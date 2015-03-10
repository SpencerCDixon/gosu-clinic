require 'pry'

class BaseClass
  def initialize(one, two)
    @one = one
    @two = two
  end

  def name
    "spencer"
  end
end


class SubClass < BaseClass
  def initialize(name)
    super("cats", "dogs")
    @name = name
  end

  def name
    super
  end
end

example = SubClass.new("spencer")
example.name # => "spencer"

