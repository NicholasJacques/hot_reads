require 'rails_helper'

RSpec.describe 'Reads API' do
  describe 'POST#create' do
    context 'link has not yet been tracked' do
      it "creates a read associated with that link" do
        url = 'https://www.google.com'

        post '/api/v1/reads', params: { link: { url: url, user_id: 1 } }
        parsed_response = JSON.parse(response.body)

        link = Link.last
        reads = link.reads

        expect(Link.count).to eq(1)
        expect(link.url).to eq(url)
        expect(reads.count).to eq(1)
        expect(reads.last.user_id).to eq("1")
      end
    end
  end
end
