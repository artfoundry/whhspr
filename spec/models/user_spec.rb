require 'spec_helper'

describe User do
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password)}
  it {should have_many(:comments)}
  it {should have_many(:discussions)}
end

