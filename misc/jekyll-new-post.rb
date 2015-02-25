#!/usr/bin/env ruby
require 'optparse'

options = {}
options[:blog_dir] = ""
options[:markup] = "markdown"
OptionParser.new do |opts|
	opts.banner = "Usage: jekyll-new-post.rb [options] name of post separated by spaces"
	opts.on("-h", "--help", "Print this help") do
		puts opts
		exit
	end
	opts.on("-b", "--blog-dir DIRECTORY", "specify the base directory of your jekyll blog.") do |b|
		options[:blog_dir] = b
	end
	opts.on("-m", "--markup MARKUP", "specify the kind of markup you are going to be using") do |m|
		options[:markup] = m
	end
end.parse!

if options[:blog_dir] != ""
	posts_dir="#{options[:blog_dir]}/_posts/"
else
	posts_dir=""
end

date = Time.new.strftime("%Y-%m-%d").to_s
filename = "#{posts_dir}#{date}"
title = ""

ARGV.each do |a|
	 title = title + '-' + a.chomp()
end

filename = filename + title + ".#{options[:markup]}"
title = ""

ARGV.each do |a|
	title = title + ' ' + a.chomp()
end

title[0] = ''
title[0] = title[0].capitalize
yaml = "---\nlayout: post\ntitle: \"#{title}\"\ndate: #{Time.new.strftime("%Y-%m-%d %H:%M:%S")}\ncategories: \n---\n\n"
File.write(filename,yaml)
exec("$EDITOR #{filename}")
