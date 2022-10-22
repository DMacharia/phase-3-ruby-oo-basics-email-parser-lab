# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        @emails.split(/, | /).uniq.map do |email|
            email
        end
    end
end

email = EmailAddressParser.new("avi@test.com, arel@test.com test@avi.com, test@arel.com avi@test.com")
puts email.parse