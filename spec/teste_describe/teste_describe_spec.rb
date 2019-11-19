# frozen_string_literal: true

describe 'description' do
  it 'String' do
    expect(subject.size).to eq(11) #quantas letras tem o subject description
    expect(subject).to be_kind_of(String) 
end
end
