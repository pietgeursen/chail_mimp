require 'rails_helper'

RSpec.describe Subscriber, type: :model do
  it {should belong_to(:list)}
end
