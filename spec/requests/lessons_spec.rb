# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Lessons', type: :request do
  describe 'GET /new' do
    it 'returns http success' do
      get '/lessons/new'
      expect(response).to have_http_status(:success)
    end
  end
end