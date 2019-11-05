module Paramable
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