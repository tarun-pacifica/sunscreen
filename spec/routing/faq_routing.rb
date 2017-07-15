require 'rails_helper'

RSpec.describe "Faq routing", type: :routing do
    it "routes the :index view correctly" do
      expect(get("/faq")).to route_to('faq#index')
    end
end