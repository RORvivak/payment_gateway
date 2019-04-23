class TransactionsController < ApplicationController

	def inform_generator
		response = []
		params.each do |variable, key|
			response << variable+"="+key.to_s+"|"
		end
		render json: {status: 'SUCCESS', string: response[0..5].join("").chop}
	end	
end
