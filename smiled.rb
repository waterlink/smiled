THRESHOLD = ENV['THRESHOLD'] || 0.1

require 'shellwords'

loop do
  sleep 1
  if rand < THRESHOLD
    time = Shellwords.escape Time.now.to_s
    stamp = Time.now.to_i
    `mkdir -p ~/.smiled/tmp`
    `streamer -f jpeg -o ~/.smiled/tmp/#{stamp}.jpeg`
    sleep 1
    `mv ~/.smiled/tmp/#{stamp}.jpeg ~/.smiled/#{time}.jpeg`
  end
end
