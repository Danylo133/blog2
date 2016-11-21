require 'rails_helper'
RSpec.describe PostsController, type: :controller do



  describe 'GET #show' do
    it "assigns the requested post to @post" do
      post = create(:post)
      get :show, id: post
      expect(assigns(:post)).to eq post
    end

    it "renders the :show template" do
      post = create(:post)
      get :show, id: post
      expect(response).to render_template :show
    end
  end

  describe 'GET #new' do
    it "assigns a new Post to @post" do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested post to @post" do
      post = create(:post)
      get :edit, id: post
      expect(assigns(:post)).to eq post
    end
    it "renders the :edit template" do
      post = create(:post)
      get :edit, id: post
      expect(response).to render_template :edit
    end
  end

end



