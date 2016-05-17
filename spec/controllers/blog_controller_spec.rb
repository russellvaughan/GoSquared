require 'rails_helper'

RSpec.describe BlogsController, type: :controller do

	login_user

	before :each do
		@blogs = create(:blog)
	end

	describe "GET #index" do 		 
		it 'renders all blogs' do 
			get :index
			expect(assigns(:blogs)).to eq([@blogs])
		end
	end

	describe "GET #show" do 
		it "should show specific qualification" do
			get :show, id: @blogs
			assert_response :success
		end

		it "assigns the requested contact to @contact" do
			get :show, id: @blogs
			expect(assigns(:blog)).to eq(@blogs)
		end
	end

	describe "POST create" do
		it "creates a new blog" do
			expect{
				post :create, blog: attributes_for(:blog)
				}.to change(Blog,:count).by(1)
			end 
		end

		describe 'GET #new' do
			it 'assigns a new blog to @blog' do
				get :new
				expect(assigns(:blogs)).to be_a_new(Blog)
			end
		end


	end