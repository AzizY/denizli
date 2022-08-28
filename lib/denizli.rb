require "denizli/version"

module Denizli
  class Error < StandardError; end
  
  def hash_me
    self.push(self[-1]) if self.size % 2 == 1
    self.compact.each_slice(2).to_a.to_h
  end

  def array_me(size)
    self.chars.each_slice(size).to_a.map(&:join)
  end
end

class Array
  include Denizli
end

class String
  include Denizli
end