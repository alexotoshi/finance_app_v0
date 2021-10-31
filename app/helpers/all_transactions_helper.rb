module AllTransactionsHelper
	def boolean_text(theboolean)
		if theboolean
			"Y"
		end
	end

	def special_amount(special_bool, price)
		if special_bool
			price
		else
			0
		end
	end
end
