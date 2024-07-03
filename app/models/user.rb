class User < ApplicationRecord
    scope :filter_by_campaign_names, -> (campaign_names) {
        if campaign_names.present?
          where(
            campaign_names.map { |name| "JSON_CONTAINS(JSON_EXTRACT(JSON_UNQUOTE(campaigns_list), '$[*]'), '{\"campaign_name\": \"#{name}\"}', '$')" }.join(' OR ')
          )
        end
      }
end
