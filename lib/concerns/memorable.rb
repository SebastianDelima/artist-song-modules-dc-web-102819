module Memorable
    module InstanceMethods
      @@all = []
      def initialize
          @@all << self
      end
  
     def self.all
      @@all
  end
  
    def to_param
      name.downcase.gsub(' ', '-')
    end
    end

    module ClassMethods

      def find_by_name(name)
        self.all.detect{|artists| artists.name == name}
      end
      
      def reset_all
        self.all.clear
      end
    
      def count
        self.all.count
      end
    end

end