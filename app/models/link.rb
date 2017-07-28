class Link < ApplicationRecord
  has_many :reads

  def self.hot_reads
    Link.joins(:reads)
         .where('reads.created_at > ?', Time.now - 1.days)
         .group('links.id')
         .order('count(links.id) DESC')
         .limit(10)
  end
end
