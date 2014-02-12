THRESHOLD = ENV['THRESHOLD'] || 0.1

require 'shellwords'

loop do
  sleep 1
  r = rand
  if r < THRESHOLD
    time = Shellwords.escape Time.now.to_s
    stamp = Time.now.to_i
    puts `mkdir -p ~/.smiled/tmp`
    puts `streamer -f jpeg -o ~/.smiled/tmp/#{stamp}.jpeg`
    sleep 1
    puts `mv ~/.smiled/tmp/#{stamp}.jpeg ~/.smiled/#{time}.jpeg`
  end
  puts "r was: #{r}"
end
