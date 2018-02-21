class NumbersTranslation
	R2N = {
		"I": 1,
		'V': 5,
		'X': 10,
		'L': 50,
		'C': 100,
		'D': 500,
		'M': 1000
	}
	attr_accessor :R2N

	def roman_to_number(roman)
		#puts "0 #{result} #{roman.length}"
		#prev = roman[0]
		prev = R2N[roman[0].to_sym]
		result = prev
		i = 1
		while i < (roman.length)
			cur = R2N[roman[i].to_sym]
			#puts "#{i} #{result} #{prev} #{cur} "
			if prev < cur
				#result  += (cur - prev)
				result  -=  prev
				result += (cur-prev)
			elsif prev == cur
				result += cur
			else
				result +=cur
			end
			prev = cur
			i +=1
		end
		result
	end

	def number_to_roman(number)

	end
end
