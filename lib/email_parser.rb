class EmailAddressParser
    attr_accessor :email
    def initialize(email)
        @email = email
    end
    def parse
        email = @email.split(/[\s,]+/)
        email.uniq
    end
end
