RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3]) do
    it '#include' do
        expect(subject).to include(2) #verifica se está incluso no array
        expect(subject).to include(3,1)
        expect(Array.new).to exclude(5)
    end

    it '#match_array' do
        expect(subject).to match_array([1,2,3]) #verifica se está exatamente como o array definido
    end


    it '#contain_exactly' do
        expect(subject).to contain_exactly(1,3,2) #verifica se está exatamente como o array definido mas pode ter posição diferente
    end
end