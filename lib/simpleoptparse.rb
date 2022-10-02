# frozen_string_literal: true

require 'simpleoptparse/version'
require 'optparse'

module Simpleoptparse
  # シンプルなオプションパーサ
  class Simpleoptparse
    def self.parse(argv, _opts, banner, version, release, &block)
      parser = OptionParser.new
      parser.banner = banner
      parser.version = version
      parser.release = release
      block.call(parser) if block_given?
      begin
        parser.parse!(argv)
      rescue(OptionParser::InvalidOption) => e
        puts e
        puts parser.to_s
        exit 20
      end
    end
  end
end
