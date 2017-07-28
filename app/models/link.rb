class Link < ApplicationRecord
  has_many :reads
  scope :hot_reads, -> {where(self.reads.count )}

  def self.hot_reads
    Link.joins(:reads)
         .where('reads.created_at > ?', Time.now - 1.days)
         .group('links.id')
         .order('count(links.id) DESC')
         .limit(10)
  end
end
