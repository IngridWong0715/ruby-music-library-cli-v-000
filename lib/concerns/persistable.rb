module Persistable
  module ClassMethods
    def destroy_all #class
      self.all.clear
    end
  end
  module InstanceMethods

      def save #instance
        @@all << self #self.class.save << self

      end
  end
end
