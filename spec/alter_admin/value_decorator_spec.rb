require 'spec_helper'
require 'alter_admin/value_decorator'

describe AlterAdmin::ValueDecorator do

  let(:simple_value) { 'value' }
  let(:lambda_value) { "#{simple_value} - lambda" }

  let(:model) { double(:model, attribute: simple_value) }
  let(:attribute) { :attribute }



  describe "when using simple send" do

    let(:info) { {} }

    subject { AlterAdmin::ValueDecorator.render(model, attribute, info) }

    it { should eq(simple_value)}

  end

  describe "when using lambda for decorating" do

    let(:info) { {value: ->(model){ "#{model.attribute} - lambda" } } }

    subject { AlterAdmin::ValueDecorator.render(model, attribute, info) }

    it { should eq(lambda_value)}

  end

end