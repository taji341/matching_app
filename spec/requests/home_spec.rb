# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'ページの表示' do
    it 'トップページが正常に表示される事' do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
