require 'present'

describe Present do
    context 'with contents' do
        it 'wraps a present and returns the present when unwrap' do
            present = Present.new
            present.wrap('toy')
            result = present.unwrap
            expect(result).to eq 'toy'
        end
    end

    context 'without contents' do
        it 'fails when the present is already wrapped' do
            present = Present.new
            present.wrap('toy')
            expect {present.wrap('candy')}.to raise_error "A contents has already been wrapped."
        end

        it 'fails when unwrap' do
            present = Present.new
            expect {present.unwrap}.to raise_error "No contents have been wrapped."
        end
    end
end