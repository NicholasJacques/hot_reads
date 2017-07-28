require 'rails_helper'

RSpec.describe 'root path' do
  it 'shows the top ten links' do
    top_links = create_list(:link_with_reads, 10)
    low_link =  create(:read).link
    old_link = create(:link)
    create_list(:read, 10, link: old_link, created_at: (Time.now - 2*7*24*60*60) )

    top_links.each do |link|
      expect(page).to have_content(link.url)
    end

    expect(page).to_not have_content(low_link.url)
    expect(page).to_not have_content(old_link.url)
  end
end
