#!/usr/bin/env ruby
require 'optparse'

options = {}
options[:blog_dir] = ""

OptionParser.new do |opts|
	opts.banner = "Usage: jekyll-new-post.rb [options] name of post separated by spaces"
	opts.on("-h", "--help", "Print this help") do
		puts opts
		exit
	end
	opts.on("-b", "--blog-dir DIRECTORY", "specify the base directory of your jekyll blog.") do |b|
		options[:blog_dir] = b
	end
end.parse!

if options[:blog_dir] != ""
	posts_dir="#{options[:blog_dir]}/_posts/"
else

end

date = Time.new.strftime("%Y-%m-%d").to_s
filename = "#{posts_dir}#{date}"
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
