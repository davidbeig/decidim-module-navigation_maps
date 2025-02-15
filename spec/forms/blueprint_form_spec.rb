# frozen_string_literal: true

require "spec_helper"

module Decidim::NavigationMaps
  describe BlueprintForm do
    subject { described_class.from_params(attributes).with_context(context) }

    let(:organization) { create :organization }
    let(:attributes) do
      {
        "data" => {
          "x" => "x data",
          "y" => "y data"
        }
      }
    end
    let(:context) do
      {
        "current_organization" => organization
      }
    end

    context "when everything is OK" do
      it { is_expected.to be_valid }
    end
  end
end
