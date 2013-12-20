require 'spec_helper'
require 'alter_admin/config'

describe AlterAdmin::Config do

  subject { AlterAdmin::Config.new }

  let(:app_name) { :app_name }
  let(:registered_models) { :registered_models }
  let(:user_session_destroy_path) { :user_session_destroy_path }

  it "is has app_name attribute" do
    subject.app_name = app_name
    subject.app_name.should eq(app_name)
  end

  it "is has registered_models attribute" do
    subject.registered_models = registered_models
    subject.registered_models.should eq(registered_models)
  end

  it "is has user_session_destroy_path attribute" do
    subject.user_session_destroy_path = user_session_destroy_path
    subject.user_session_destroy_path.should eq(user_session_destroy_path)
  end

end