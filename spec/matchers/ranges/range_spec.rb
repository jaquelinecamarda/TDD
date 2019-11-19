describe (1..5), 'Ranges' do
    it '#cover' do
        is_expected.to cover(2)
        expect(subject).to cover(2)
        expect(subject).to cover(2,5)
        expect(subject).not_to cover(0,6)
    end
    #em uma unica linha mais fácil de entender 
    it { is_expected.to cover(2) }
end