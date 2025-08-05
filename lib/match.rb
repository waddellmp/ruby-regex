# frozen_string_literal: true

# match - used to check if a string matches a pattern
# sub - used to replace a string with a pattern
# gsub - used to replace all occurrences of a string with a pattern
# scan - used to find all matches of a pattern in a string
module Match
  def self.call(_input)
    # Basic methods
    sentence = 'This is a sample string'

    # Check if string contains 'is' not using regex
    p 'Using include? basics'
    p sentence.include?('is') # true
    p sentence.include?('z') # false

    # Check if 'sentence' matches the pattern described by the regexp arg
    p 'Using match? basics'
    p sentence.match?(/is/) # true
    p sentence.match?(/z/) # false

    p(/ring/.match?(sentence)) # true

    # match accepts an optional 2nd arg to specify where to start searching
    # returns nil if no match is found or MatchData if a match is found
    p 'Matching with start position arg'
    p sentence.match(/is/, 2) # #<MatchData "is">
    p sentence.match(/is/, 6) # nil

    # Using regex modifiers
    # Modifiers provide additional functionality to the regex
    # i - case insensitive
    # m - multiline
    # x - verbose
    # o - only once
    # n - new line
    # u - unicode
    # s - single line
    # y - sticky
    p 'Matching with modifiers'
    p sentence.match(/this/) # false
    p sentence.match(/this/i) # true

    # Regexp patterns can be saved in vars
    pattern = /ring/

    p 'Using sub and gsub'

    # sub - used to replace a string with a pattern
    p sentence.sub(pattern, 'ar') # "This is a sample star"

    # gsub - used to replace all occurrences of a string with a pattern
    p sentence.gsub(/is/, 'at') # That at a sample string"

    p 'Using interpolation with regex for dynamic patterns'
    pattern = 'st'
    p 'This is a sample string'.sub(/#{pattern}ring/i, '*') # "This is a sample"

    # Using gsub! and sub! to in place replace on the string
    p 'Using gsub! and sub! to in place replace on the string'
    p sentence.gsub!(/is/, 'at') # That at a sample string"
    p sentence.sub!(/ring/, 'ar') # "This is a sample star"

    # Using regex operators =~, !~ and ===
    p "His taste is good" =~ /is/ #1
    p "His taste is good" !~ /bad/ #true

    p (/is/ === "His taste is good") #true
    p (/bad/ === "His tast is good") #false


    # Matching enumerables
    words = %w[cat attempt tattle]
    p words.grep(/tt/) # ["attempt", "tattle"]

    p words.all?(/at/) #true

    p words.none?(/temp/) #false
  end
end
