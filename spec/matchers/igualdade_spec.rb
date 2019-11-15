describe 'Matcher de comparação' do
    it '#equal ou #be- Teste se é o mesmo objeto' do
        x = "ruby"
        y = "ruby"

        expect(x).to equal(x)
        expect(x).not_to be(y) # perceba tanto be quanto equal comparam o objeto não o conteúdo

    end

    it '#eql ou #eq - Teste se é o mesmo valor/conteúdo' do
        x = "ruby"
        y = "ruby"
        v = "sruby"

        expect(x).to eql(y)
        expect(x).not_to eq(v) # perceba tanto eq quanto eql comparam o valor não o objeto

    end
end