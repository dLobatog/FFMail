module Ffmail
  class Base
    def self.attributes(*names)
      attr_accessor *names  
    end
  end
end
