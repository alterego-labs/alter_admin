require 'spec_helper'
require 'alter_admin/model_setting'
require 'active_support/inflector'

class SampleClassAdminSetting < AlterAdmin::ModelSetting
end

class SampleClass
end

describe AlterAdmin::ModelSetting do

  let(:column) { double(:column, name: :name, type: :string) }
  let(:columns_hash) { { name: { as: :string } } }

  subject { SampleClassAdminSetting }

  before do
    SampleClass.stub(:columns) { [column] }
  end

  describe "self#model_class" do

    it "is return proper model" do
      subject.model_class.should eq(SampleClass)
    end

  end

  describe "self#table_columns" do

    it "is return columns hash" do
      subject.table_columns.should eq(columns_hash)
    end

  end

  describe "self#show_columns" do

    it "is return columns hash" do
      subject.show_columns.should eq(columns_hash)
    end

  end

  describe "self#edit_columns" do

    it "is return columns hash" do
      subject.edit_columns.should eq(columns_hash)
    end

  end

  describe "self#scopes" do

    it "is return empty array by default" do
      subject.scopes.should be_empty
    end

  end

  describe "self#default_columns" do

    describe "when hidden columns not include model column" do

      it "is return all model columns" do
        subject.send(:default_columns).should eq(columns_hash)
      end

    end

    describe "when hidden column include some of model columns" do

      it "is deleted from result hash" do
        subject.stub(:hidden_columns) { [:name] }
        subject.send(:default_columns).should_not include(:name)
      end

    end

  end

end