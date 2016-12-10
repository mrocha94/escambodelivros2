require 'rails_helper'

RSpec.describe Book, type: :model do
  subject { FactoryGirl.build(:book) }

  it { is_expected.to have_many(:book_authors) }
  it { is_expected.to have_many(:authors) }
  it { is_expected.to have_many(:book_categories) }
  it { is_expected.to have_many(:categories) }

  it { is_expected.to validate_uniqueness_of(:isbn) }
  it { is_expected.to validate_presence_of(:isbn) }
  it { is_expected.to validate_presence_of(:titulo) }
  it { is_expected.to validate_presence_of(:editora) }
  it { is_expected.to validate_presence_of(:edicao) }
  it { is_expected.to validate_presence_of(:idioma) }
end
