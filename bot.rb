require 'multipaint/run'

class Megabot5000
  attr_reader :player_id

  def initialize(player_id)
    @player_id = player_id
  end

  def next_move(state)
    {
      'type' => %w[walk shoot].sample,
      'direction' => [[1, 0], [-1, 0], [0, 1], [0, -1]].sample,
    }
  end
end

Multipaint.run! Megabot5000
