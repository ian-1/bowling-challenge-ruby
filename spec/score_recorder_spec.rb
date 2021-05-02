require 'score_recorder'

describe ScoreRecorder do
  subject(:scorerecorder) { described_class.new }

  describe '#current_frame' do
    it 'returns 1 for new game' do
      frames = []
      expect(scorerecorder.current_frame(frames)).to eq(1)
    end

    it 'returns 2 after two rolls' do
      frames = [[3, 4]]
      expect(scorerecorder.current_frame(frames)).to eq(2)
    end
  end
end
