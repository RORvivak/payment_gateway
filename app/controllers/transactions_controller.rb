class TransactionsController < ApplicationController

	def inform_generator
		response = []
		params.each do |variable, key|
			response << variable+"="+key.to_s+"|"
		end
		value = response[0..5].join("")
		digest = Digest::SHA1.hexdigest(value.chop)
		string_value = value+"hash=#{digest}"
		render json: {status: 'SUCCESS', string: string_value}
	end	
end
