describe Article do
  it 'is invalid without a title' do
    Factory.build(:article, title => nil).should_not be_valid
  end

  # it 'has a valid text'
end