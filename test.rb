#!/usr/bin/env ruby
# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

100.times do
  sleep(0.5)
  page = Nokogiri::HTML(open(ARGV.first))
  puts page.css('title').text
end
