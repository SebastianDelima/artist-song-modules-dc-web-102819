module Findable
def find_by_name(name)
    self.all.detect{|artists| artists.name == name}
  end
end