# frozen_string_literal: true

describe 'Matchers de comparação' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 2
  end

  it 'be_between inclusive e exclusive' do
    expect(5).to be_between(2, 7).inclusive
    expect(5).to be_between(2, 7).exclusive #exclui os extremos
  end

  it 'match' do
    expect("fulano@com.br").to match(/..@../)
  end

  it 'start_with' do
    expect("fulano de tal").to start_with("fulano")
    expect([1,2,3]).to start_with(1)
  end

  it 'end_with' do
    expect("fulano de tal").to end_with("tal")
    expect([1,2,3]).to end_with(3)
  end
end
