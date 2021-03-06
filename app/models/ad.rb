class Ad < ActiveRecord::Base
  multi_tenant :account

  belongs_to :campaign
  has_many :clicks, dependent: :delete_all
  has_many :impressions, dependent: :delete_all
end
