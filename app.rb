#!/usr/bin/ruby

require('fileutils')
require('bundler')


art = File.read('art.txt')
anti_oedipus = File.readlines('anti-oedipus.txt')
puts art
puts "Welcome to Git Commit Bot. This progrm"
puts "will run for a long time as the electronic"
puts "ghosts of Deleuze and Guatarri rewrite"
puts "Anti-Oedipus. Press ctrl+c to stop at any time"
puts "proceed? y/n"
go_on = gets.chomp
if go_on == "y"
  FileUtils.cd('..')
  FileUtils.mkdir_p("anti-project/")
  FileUtils.cd("anti-project/")

  File.new("anti-oedipus.html", "a")


  anti_oedipus.each do |line|
    line = "<p>" + line + "</p>"
    File.write('anti-oedipus.html', line, File.size('anti-oedipus.html'), mode: 'a')
    system("git init && git add . && git commit -m 'add a new line.'")
    sleep(60)

  end
  puts "I am the joint e-ghost of Gilles Deleuze and Felix Guattari, and I wrote this. "
  puts "Goodbye!"
end
