require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BreedingPairsController do

  # This should return the minimal set of attributes required to create a valid
  # BreedingPair. As you add validations to BreedingPair, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BreedingPairsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all breeding_pairs as @breeding_pairs" do
      breeding_pair = BreedingPair.create! valid_attributes
      get :index, {}, valid_session
      assigns(:breeding_pairs).should eq([breeding_pair])
    end
  end

  describe "GET show" do
    it "assigns the requested breeding_pair as @breeding_pair" do
      breeding_pair = BreedingPair.create! valid_attributes
      get :show, {:id => breeding_pair.to_param}, valid_session
      assigns(:breeding_pair).should eq(breeding_pair)
    end
  end

  describe "GET new" do
    it "assigns a new breeding_pair as @breeding_pair" do
      get :new, {}, valid_session
      assigns(:breeding_pair).should be_a_new(BreedingPair)
    end
  end

  describe "GET edit" do
    it "assigns the requested breeding_pair as @breeding_pair" do
      breeding_pair = BreedingPair.create! valid_attributes
      get :edit, {:id => breeding_pair.to_param}, valid_session
      assigns(:breeding_pair).should eq(breeding_pair)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BreedingPair" do
        expect {
          post :create, {:breeding_pair => valid_attributes}, valid_session
        }.to change(BreedingPair, :count).by(1)
      end

      it "assigns a newly created breeding_pair as @breeding_pair" do
        post :create, {:breeding_pair => valid_attributes}, valid_session
        assigns(:breeding_pair).should be_a(BreedingPair)
        assigns(:breeding_pair).should be_persisted
      end

      it "redirects to the created breeding_pair" do
        post :create, {:breeding_pair => valid_attributes}, valid_session
        response.should redirect_to(BreedingPair.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved breeding_pair as @breeding_pair" do
        # Trigger the behavior that occurs when invalid params are submitted
        BreedingPair.any_instance.stub(:save).and_return(false)
        post :create, {:breeding_pair => {}}, valid_session
        assigns(:breeding_pair).should be_a_new(BreedingPair)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BreedingPair.any_instance.stub(:save).and_return(false)
        post :create, {:breeding_pair => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested breeding_pair" do
        breeding_pair = BreedingPair.create! valid_attributes
        # Assuming there are no other breeding_pairs in the database, this
        # specifies that the BreedingPair created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BreedingPair.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => breeding_pair.to_param, :breeding_pair => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested breeding_pair as @breeding_pair" do
        breeding_pair = BreedingPair.create! valid_attributes
        put :update, {:id => breeding_pair.to_param, :breeding_pair => valid_attributes}, valid_session
        assigns(:breeding_pair).should eq(breeding_pair)
      end

      it "redirects to the breeding_pair" do
        breeding_pair = BreedingPair.create! valid_attributes
        put :update, {:id => breeding_pair.to_param, :breeding_pair => valid_attributes}, valid_session
        response.should redirect_to(breeding_pair)
      end
    end

    describe "with invalid params" do
      it "assigns the breeding_pair as @breeding_pair" do
        breeding_pair = BreedingPair.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BreedingPair.any_instance.stub(:save).and_return(false)
        put :update, {:id => breeding_pair.to_param, :breeding_pair => {}}, valid_session
        assigns(:breeding_pair).should eq(breeding_pair)
      end

      it "re-renders the 'edit' template" do
        breeding_pair = BreedingPair.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BreedingPair.any_instance.stub(:save).and_return(false)
        put :update, {:id => breeding_pair.to_param, :breeding_pair => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested breeding_pair" do
      breeding_pair = BreedingPair.create! valid_attributes
      expect {
        delete :destroy, {:id => breeding_pair.to_param}, valid_session
      }.to change(BreedingPair, :count).by(-1)
    end

    it "redirects to the breeding_pairs list" do
      breeding_pair = BreedingPair.create! valid_attributes
      delete :destroy, {:id => breeding_pair.to_param}, valid_session
      response.should redirect_to(breeding_pairs_url)
    end
  end

end
