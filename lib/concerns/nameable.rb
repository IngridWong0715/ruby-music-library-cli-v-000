module Nameable
  module ClassMethods
    def create(name)
      self.new(name).tap do |o|
        o.save
      end
  end
end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist

  end
