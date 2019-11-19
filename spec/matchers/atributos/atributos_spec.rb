# frozen_string_literal: true

require 'pessoa'

describe 'atributos' do
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Jaque"
    pessoa.idade = 26

    expect(pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 26))
  end
end
