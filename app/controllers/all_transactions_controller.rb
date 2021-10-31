class AllTransactionsController < ApplicationController
	def list_all
    	@transactions = Transaction.all
    	@total = 0
    	@transactions.each do |t|
    		@total += t.price
    	end
  	end
end
