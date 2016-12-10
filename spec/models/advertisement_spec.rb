require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  subject { FactoryGirl.build(:advertisement) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:books_group) }
end
