#encoding: utf-8
require 'spec_helper'

describe "StaticPages" do
	subject { page }
  describe "Home page" do
  before {visit static_pages_home_path}
   it {should have_content('Частная лавочка')}
   end
  end
