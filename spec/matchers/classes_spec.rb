# frozen_string_literal: true

describe 'Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of' do
    str = StringVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringVazia)
    expect(10).to be_kind_of(Integer) # pode ser por herança
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end

  it 'be_an' do
    str = StringVazia.new
    expect(str).to be_a(String)
    expect(str).to be_a(StringVazia)
  end
end