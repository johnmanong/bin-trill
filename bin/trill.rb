#!/usr/bin/ruby

def prompt(*args)
  print(*args)
  gets
end

answer = prompt "Get jiggy wit it? (y/n) "

if not 'yes'.start_with?(answer.strip.downcase)
  puts 'peace...'
  exit
end

aliases = {
  "branch" => "bitches",
  "clone" => "trap",
  "merge" => "money",
  "pull" => "paid",
  "push" => "pusha",
  "rebase" => "freebase",
  "status" => "sitch",
}

puts "#bintrill#"

aliases.each do |git_cmd, git_alias|
  puts "#{git_cmd} -> #{git_alias}"
  system "git config --global alias.#{git_alias} '#{git_cmd}'"
end

puts "#llirtnib#"