module ApplicationHelper
    def payload_test
        JSON.parse(response.body, symbolize_names: true)
    end
end