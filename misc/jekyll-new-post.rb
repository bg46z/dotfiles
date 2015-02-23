#!/usr/bin/env ruby
date = Time.new.strftime("%Y-%m-%d").to_s
filename = "#{date}"
title = ""
ARGV.each do |a|
	 title = title + '-' + a.chomp()
end

filename = filename + title + ".markdown"

title = ""
ARGV.each do |a|
	title = title + ' ' + a.chomp()
end

title[0] = ''

yaml = "---\nlayout: post\ntitle: \"#{title}\"\ndate: #{Time.new.strftime("%Y-%m-%d %H:%M:%S")}\ncategories: \n---\n\n"
File.write(filename,yaml)

exec("$EDITOR #{filename}")
