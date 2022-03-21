# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'without shoulda-matchers' do
    it 'create with valid values' do
      p = create(:product)
      expect(p).to be_valid
    end

    it 'is invalid without description raising error' do
      expect { create(:product, description: nil) }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'is invalid without description' do
      p = build(:product, description: nil)
      expect(p).not_to be_valid
    end

    it 'is invalid without price' do
      p = build(:product, price: nil)
      expect(p).not_to be_valid
    end

    it 'is invalid without category' do
      p = build(:product, category: nil)
      expect(p).not_to be_valid
    end
  end

  context 'with shoulda-matchers' do
    context 'validations' do
      it { is_expected.to validate_presence_of(:description) }
      it { is_expected.to validate_presence_of(:price) }
      it { is_expected.to validate_presence_of(:category) }
    end

    context 'associations' do
      it { is_expected.to belong_to(:category) }
    end
  end

  context 'instance methods' do
    it '#full_description to match product description' do
      p = build(:product)
      expect(p.full_description).to eq("#{p.description} || #{p.price}")
    end
  end
end
