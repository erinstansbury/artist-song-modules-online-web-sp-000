module Memorable
  module ClassMethods
    def reset_all
      extend Artist
    end

    def count
      extend Artist
    end
  end

  module InstanceMethods
      def initialize
        self.class.all << self
      end
    end

end
