 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/test_holes", type: :request do
  # TestHole. As you add validations to TestHole, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      TestHole.create! valid_attributes
      get test_holes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      test_hole = TestHole.create! valid_attributes
      get test_hole_url(test_hole)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_test_hole_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      test_hole = TestHole.create! valid_attributes
      get edit_test_hole_url(test_hole)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new TestHole" do
        expect {
          post test_holes_url, params: { test_hole: valid_attributes }
        }.to change(TestHole, :count).by(1)
      end

      it "redirects to the created test_hole" do
        post test_holes_url, params: { test_hole: valid_attributes }
        expect(response).to redirect_to(test_hole_url(TestHole.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new TestHole" do
        expect {
          post test_holes_url, params: { test_hole: invalid_attributes }
        }.to change(TestHole, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post test_holes_url, params: { test_hole: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested test_hole" do
        test_hole = TestHole.create! valid_attributes
        patch test_hole_url(test_hole), params: { test_hole: new_attributes }
        test_hole.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the test_hole" do
        test_hole = TestHole.create! valid_attributes
        patch test_hole_url(test_hole), params: { test_hole: new_attributes }
        test_hole.reload
        expect(response).to redirect_to(test_hole_url(test_hole))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        test_hole = TestHole.create! valid_attributes
        patch test_hole_url(test_hole), params: { test_hole: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested test_hole" do
      test_hole = TestHole.create! valid_attributes
      expect {
        delete test_hole_url(test_hole)
      }.to change(TestHole, :count).by(-1)
    end

    it "redirects to the test_holes list" do
      test_hole = TestHole.create! valid_attributes
      delete test_hole_url(test_hole)
      expect(response).to redirect_to(test_holes_url)
    end
  end
end
