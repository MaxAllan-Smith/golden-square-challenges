require 'gratitudes'

describe Gratitudes do
    it 'adds the gratitdue to the array' do
        gratitudes = Gratitudes.new
        result = gratitudes.add('Tony')
        expect(result).to eq ['Tony']
    end

    it 'returns a formatted string with gratitudes' do
        gratitudes = Gratitudes.new
        gratitudes.add('Tony')
        gratitudes.add('Jenny')
        gratitudes.add('Max')
        gratitudes.add('Luke')
        result = gratitudes.format
        expect(result).to eq 'Be grateful for: Tony, Jenny, Max, Luke'
        
    end
end