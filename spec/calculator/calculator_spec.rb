# frozen_string_literal: true

require 'calculator' # requer a classe da pasta lib

describe Calculator, 'Sobre a calculadora' do # descreve os testes
  context '#sum' do
    it 'positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eql(12) 
    end

    it 'negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eql(-12)
    end

    it 'negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eql(2)
    end
  end
end
