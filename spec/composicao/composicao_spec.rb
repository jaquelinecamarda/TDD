require_relative 'helper'

RSpec.configure do |conf|
    conf.include Helper
end

describe 'Ruby on Rails' do
    it {is_expected.to start_with("Ruby").and end_with("Rails")}
    it {expect(fruta).to eq('banana').or eq('laranja').or eq('uva')}

    #def fruta
       # %w(banana laranja uva).sample #.sample é sorteio aleatório
    #end

end