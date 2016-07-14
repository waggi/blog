require 'rails_helper'

describe Article do

  it 'has a valid factory' do
    expect(build(:article)).to be_valid
  end

  it 'is invalid without a title' do
    expect(build(:article, title: nil)).to_not be_valid
  end

  it 'has a valid title' do
    expect(build(:article).title.size).to be_between(5,250)
  end

end