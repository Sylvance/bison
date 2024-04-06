# frozen_string_literal: true

require_relative "bison/version"

module Bison
  class Error < StandardError; end

  def self.run
    puts "Running the gem"
  end
end
