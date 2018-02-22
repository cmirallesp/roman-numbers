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
			else #  prev  >=cur
				result +=cur
			end
			prev = cur
			i +=1
		end
		result
	end

	N2R = {
		1000 => 'M',
		500 => 'D',
		100 => 'C',
		50 => 'L',
		10 => 'X',
		5 => 'V',
		1 => 'I'
	}

	def number_to_roman(number, divisor = 1)
		return "" if number == 0
		raise "No numbers beyond 3999" if number > 3999
		quotient       = number / divisor
		if quotient > 9
				number_to_roman(number, divisor * 10 )
		else
			roman_quotient =
				if quotient.in? 1..3
					"#{N2R[divisor] * quotient}" #I|C|M,II|CC|MM,III|CC|MM

				elsif quotient.in? 4..8
					r = N2R[divisor * 5] # V|L|D
					pre = quotient == 4 ? N2R[divisor] : ""
					suf = quotient.in?(6..8) ? N2R[divisor] * (quotient - 5) : ""
					"#{pre}#{r}#{suf}"

				elsif quotient == 9
					"#{N2R[divisor]}#{N2R[divisor * 10]}"
				end
				roman_remainder = number_to_roman(number % divisor)
				"#{roman_quotient}#{roman_remainder}"
		end
	end
end
