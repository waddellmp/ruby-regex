# frozen_string_literal: true

require_relative 'match'

module RubyRegex
  def self.demo
    puts '=== Ruby Regex Learning Examples ==='
    puts

    # Call examples from Match module
    puts '--- Match Examples ---'
    Match.call(nil)

    puts
    puts 'Add more regex concepts in separate files!'
  end
end
