# == Schema Information
#
# Table name: requests
#
#  id          :bigint           not null, primary key
#  decade      :integer
#  description :text
#  existence   :integer
#  gender      :integer
#  job         :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_requests_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Request < ApplicationRecord
  belongs_to :user
end
