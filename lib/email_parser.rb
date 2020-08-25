# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"
class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(potato)
        @email_addresses = potato
    end

    def email_addresses
        @email_addresses
    end
    
    def parse
        emailc=[]
        emails= @email_addresses.split
        emails.map do |key|
            emailc << key.gsub(/[\s,]/ ,"")
        end
        @email_addresses= emailc.uniq
        
    end
end