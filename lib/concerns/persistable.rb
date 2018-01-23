module Persistable
  module ClassMethods
  end
  module InstanceMethods

      def save #instance
        @@all << self #self.class.save << self

      end
  end
end


  def self.destroy_all #class
    self.all.clear
  end
