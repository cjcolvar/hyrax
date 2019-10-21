# frozen_string_literal: true

require 'spec_helper'
require 'hyrax/specs/shared_specs/hydra_works'

RSpec.describe Hyrax::Work do
  subject(:work) { described_class.new }

  it_behaves_like 'a Hyrax::Work'

  describe '#state' do
    it 'is active by default' do
      expect(work.state).to eq Hyrax::ResourceStatus::ACTIVE
    end
  end
end
