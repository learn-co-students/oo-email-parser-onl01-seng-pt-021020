require 'pry'


# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(emails_csv)
    @emails = emails_csv
  end

  def parse
    emails_split = @emails.split(', ').collect {|email| email.split}
    emails_split.flatten.uniq
  end
end
