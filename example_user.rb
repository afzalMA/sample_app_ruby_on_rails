# def yeller(a)
#     a = a.map { |char| char.upcase }
#     puts a.join
# end
# yeller(['o', 'l', 'd'])



# def yeller(b)
#     b.map(&:upcase).join
# end
# p yeller(['o','l','d'])



# def random_subdomain(a)
#     a.to_a.shuffle[0..7].join
# end
# p random_subdomain(('a'..'z'))


# def string_shuffle(s)
#     s.split('').shuffle.join
# end
# p string_shuffle("foobar")


# class String
#     def palindrome?(string)
#         string == string.reverse
#     end
# end
# w = String.new
# p w.palindrome?("levesdfl")


# class Word < String
#     def palindrome?
#         self == reverse
#     end
# end
# s = Word.new("level")
# p s.palindrome?


class User
    attr_accessor :first, :last, :email, :full_name

    def initialize(attributes = {})
        @first = attributes[:first]
        @email = attributes[:email]
        @last = attributes[:last]
        @full_name = full_name
    end
    def full_name
        "#{@first} #{@last}"
    end
    def formatted_email
        "#{full_name} <#{@email}>"
    end
    def alphabetical_name
        "#{@last}, #{@first}"
    end
end

example = User.new
example.first = "afzal"
example.last = "mohammed"
example.email = "afzla@lak.com"
p example.formatted_email
p example.full_name
p example.alphabetical_name
p example.full_name.split
p example.alphabetical_name.split(', ').reverse