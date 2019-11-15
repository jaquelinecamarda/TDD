# frozen_string_literal: true

require 'string_vazia'

describe String do
  describe StringVazia do
    it "Não está vazia" do 
        expect(subject).to eq("Não sou vazio")
    end
  end
end
