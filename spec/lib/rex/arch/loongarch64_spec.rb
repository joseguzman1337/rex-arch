# -*- coding:binary -*-
require 'spec_helper'
require 'rex/arch'

RSpec.describe Rex::Arch::LoongArch64 do
  describe ".reg_number" do
    subject { described_class.reg_number(register) }

    context "when valid argument" do
      context "in upcase" do
        let(:register) { "SP" }
        it { is_expected.to eq(Rex::Arch::LoongArch64::SP) }
      end

      context "in downcase" do
        let(:register) { "sp" }
        it { is_expected.to eq(Rex::Arch::LoongArch64::SP) }
      end
    end

    context "when invalid argument" do
      let(:register) { "non_existent" }
      it "raises an error" do
        expect { subject }.to raise_error(NameError)
      end
    end
  end
end
