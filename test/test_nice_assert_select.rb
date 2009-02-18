require File.dirname(__FILE__) + '/test_helper'

class TestNiceAssertSelect < Test::Unit::TestCase
  

  context "build_html_selector for form without attributes" do
    should 'use HTML.selector("form")' do
      HTML.expects(:selector).with('form')

      build_html_selector('form')
    end
  end

  context "build_html selector for form with attributes" do
    should "use HTML.selector('form[action=/foo]')" do
      HTML.expects(:selector).with('form[action=?]', '/foo')

      build_html_selector('form', :action => '/foo')
    end
  end

  context "form with action => /foo" do
    should "use build_html_selector('form', :action => '/foo')" do
      expects(:build_html_selector).with('form', :action => '/foo')

      form(:action => '/foo')
    end
  end

  context "text_field with name 'foo' and value 'bar'" do
    should "use build_html_selector('input', :type => 'text', :name => 'foo', :value => 'bar')" do
      expects(:build_html_selector).with('input', :type => 'text', :name => 'foo', :value => 'bar')

      text_field(:name => 'foo', :value => 'bar')
    end
  end

  context "hidden_field with name 'foo'" do
    should "use build_html_selector('input', :type => 'hidden', :name => 'foo')" do
      expects(:build_html_selector).with('input', :type => 'hidden', :name => 'foo')

      hidden_field(:name => 'foo')
    end
  end

  context "password_field with name 'foo'" do
    should "use build_html_selector('input', :type => 'password', :name => 'foo'" do
      expects(:build_html_selector).with('input', :type => 'password', :name => 'foo')

      password_field(:name => 'foo')
    end
  end

  context "submit_button" do
    should "use build_html_selector('input', :type => 'submit')" do
      expects(:build_html_selector).with('input', :type => 'submit')

      submit_button
    end
  end

  context "form_method_field for :put" do
    should "use hidden_field(:name => '_method', :value => :put)" do
      expects(:hidden_field).with(:name => '_method', :value => :put)

      form_method_field(:put)
    end
  end
end
