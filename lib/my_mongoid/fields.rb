module MyMongoid

	module Fields
    def self.included(base)
    	#class_attribute :aliased_fields

      #self.aliased_fields = { "id" => "_id" }
      #self.fields = {}
      #binding.pry
      base.extend(ClassMethods)
    end

    def test1
    	puts "test1"
    end

    def test3
    	self.class.test3
    end

    # Get the name of the provided field as it is stored in the database.
    # Used in determining if the field is aliased or not.
    #
    # @example Get the database field name.
    #   model.database_field_name(:authorization)
    #
    # @param [ String, Symbol ] name The name to get.
    #
    # @return [ String ] The name of the field as it's stored in the db.
    #
    # @since 0.0.1
    def database_field_name(name)
    	self.class.database_field_name(name)
    end

		module ClassMethods
      # Get the name of the provided field as it is stored in the database.
      # Used in determining if the field is aliased or not.
      #
      # @example Get the database field name.
      #   Model.database_field_name(:authorization)
      #
      # @param [ String, Symbol ] name The name to get.
      #
      # @return [ String ] The name of the field as it's stored in the db.
      #
      # @since 0.0.1
      def database_field_name(name)
        return nil unless name
        normalized = name.to_s
        normalized#aliased_fields[normalized] || normalized
      end

	    def test2
	    	puts "test2"
	    end

	    def test3
	    	puts "test3"
	    end
		end
  end
end