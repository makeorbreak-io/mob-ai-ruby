require 'json'

module Multipaint
  class << self
    def write(message)
      $stdout.puts(JSON.generate(message))
    end

    def run!(player_class)
      $stdin.sync = true
      $stdout.sync = true

      player = player_class.new(JSON.parse($stdin.readline)["player_id"])

      write(ready: true)

      loop do
        msg = JSON.parse($stdin.readline)

        write({ turns_left: msg['turns_left'] }.merge(player.next_move(msg)))
      end
    end
  end
end
