FactoryGirl.define do
  sequence :url do |n|
    "http://www.test#{n}.com"
  end

  factory :link do
    url
  end


  factory :link_with_reads, parent: :link do |link|
    url
    after(:create) do |link|
      create_list(:read, rand(5..10), link: link)
    end
  end
end
