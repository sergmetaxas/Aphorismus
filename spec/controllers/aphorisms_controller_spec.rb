require 'rails_helper'

RSpec.describe AphorismsController, type: :controller do

  it "show index page" do
    expect(get :index).to render_template(:index)
  end
end
 