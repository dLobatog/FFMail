module Ffmail
  class Base
    include ActiveModel::AttributeMethods
    include ActiveModel::Conversion
    extend  ActiveModel::Naming
    extend  ActiveModel::Translation
    include ActiveModel::Validations
    
    attribute_method_prefix 'clear_'
    attribute_method_suffix '?'


    def self.attributes(*names)
      attr_accessor *names  

      define_attribute_methods names
    end

    protected
    def clear_attribute(attribute)
      send("#{attribute}=", nil)  
    end

    def attribute?(attribute)
      send(attribute).present?
    end
  end
end
