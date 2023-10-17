module Geolocation
	class ByStringService < ApplicationService
		def initialize(search_string)
			super()
			@search_string = search_string
		end

		def execute
			response = RestClient.get(
				'https://api.geoapify.com/v1/geocode/search',
				{
					params: {
						text: @search_string,
						apiKey: 'd1266cd30da44b3994bee7587465adf9',
						format: 'json'
					}
				}	
			)
			JSON.parse response.body
		end
	end
end