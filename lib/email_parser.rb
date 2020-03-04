# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :list_of_email_addresses
  
  def initialize(list_of_email_addresses)
    @list_of_email_addresses = list_of_email_addresses
  end 

  def parse
    
    delimiters = [",", ", ", " "]
    
    final_array = @list_of_email_addresses.split(Regexp.union(delimiters)).flatten.uniq.reject{|element| element.empty?}
  end  

end

email_addresses = "john@doe.com, person@somewhere.org"

parser = EmailAddressParser.new(email_addresses)
 
parser.parse
