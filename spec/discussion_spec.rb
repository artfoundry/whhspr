require 'spec_helper'

describe Discussion do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }

end