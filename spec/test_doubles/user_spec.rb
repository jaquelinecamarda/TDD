describe 'Test Double' do
  it '__' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack' , password: 'secret')
    user.name
    user.password
  end

  it 'As null object' do
    user = double('User').as_null_object 
    allow(user).to receive_messages(name: 'Jack' , password: 'secret')
    user.name
    user.password
    user.abc
  end
end