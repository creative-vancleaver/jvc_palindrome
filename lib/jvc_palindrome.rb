require "jvc_palindrome/version"

module JvcPalindrome

    # Returns true for a palindrome, false otherwise.
    def palindrome?
      if processed_content.empty?
        false
      else
        processed_content == processed_content.reverse
      end
    end

      private

      # Returns content for palindrome testing.
      def processed_content
        self.to_s.scan(/[a-z\d]/i).join.downcase
      end
end

class String
  include JvcPalindrome
end

class Integer
  include JvcPalindrome
end









  # # Returns the letters of the string
  # def letters
  #   the_letters = []

  #   scan(/[a-z]/i).join

  #   for i in 0..self.length - 1
  #     if(self[i].match(/[a-zA-Z]/))
  #       the_letters << self[i]
  #     end
  #   end
  #   the_letters.join
  # end