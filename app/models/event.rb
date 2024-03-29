# == Schema Information
#
# Table name: events
#
#  id         :bigint(8)        not null, primary key
#  image1     :string(255)
#  image2     :string(255)
#  image3     :string(255)
#  location   :string(255)
#  title      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  couple_id  :bigint(8)        not null
#
# Indexes
#
#  index_events_on_couple_id  (couple_id)
#
# Foreign Keys
#
#  fk_rails_...  (couple_id => couples.id)
#

class Event < ApplicationRecord
  belongs_to :couple
  has_many :comments, dependent: :destroy
  has_many :evaluations, dependent: :destroy
end
