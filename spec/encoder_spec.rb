describe Encoder do

  let(:encoder){ Encoder.new }

  describe '#noop' do
    it 'takes a word, and does nothing to it' do
      expect(encoder.noop('anyword')).to eq 'anyword'
    end
  end

  describe '#reverse' do
    it 'takes a word, and reverses it' do
      expect(encoder.reverse('anyword')).to eq 'drowyna'
    end
  end

  describe '#vowels_to_numbers' do
    it 'takes a word, and substitutes the vowels by numbers' do
      expect(encoder.vowels_to_numbers('a')).to eq '4'
      expect(encoder.vowels_to_numbers('e')).to eq '3'
      expect(encoder.vowels_to_numbers('i')).to eq '1'
      expect(encoder.vowels_to_numbers('o')).to eq '0'
      expect(encoder.vowels_to_numbers('u')).to eq '6'
      expect(encoder.vowels_to_numbers('murcielago')).to eq 'm6rc13l4g0'
    end
  end

end