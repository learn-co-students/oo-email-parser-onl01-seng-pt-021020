require "pry"
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :email_addresses

  def initialize(emails)
    @email_addresses = emails
  end

  def parse
    new_arr = []
    splice_em = email_addresses.split(' ')
    splice_em.each do |email|
      email.delete_suffix!(',')
      new_arr << email
    end
    new_arr.uniq
    #binding.pry
  end
end
