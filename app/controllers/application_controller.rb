class ApplicationController < ActionController::Base
    def validate_each(record, attribute, value)
        if value.match(PHONE_REGEX).blank?
          record.errors.add(attribute, 'invalid phone number')
        end
      
    end
end
