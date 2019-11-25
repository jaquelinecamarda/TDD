# frozen_string_literal: true

require 'pessoa'

describe 'atributos' do

around(:each) do |teste|
puts "antes"
@pessoa = Pessoa.new
teste.run
@pessoa.nome = "Sem nome"
puts "Depois .... #{@pessoa.inspect}"


end
  it 'have_attributes' do
    pessoa = Pessoa.new
    pessoa.nome = "Jaque"
    pessoa.idade = 26

    expect(pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 26))
  end
end
