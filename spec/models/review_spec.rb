require 'rails_helper'

describe Review do
  it { should belong_to(:product) }
end

describe Review do
  it { should validate_length_of(:content_body).is_at_most(250) }
end

describe Review do
  it { should validate_length_of(:content_body).is_at_least(50) }
end

describe Review do
  it { should validate_numericality_of(:rating).is_less_than(6) }
end

describe Review do
  it { should validate_numericality_of(:rating).is_greater_than(0) }
end