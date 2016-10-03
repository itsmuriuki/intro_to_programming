def num_in_words (num)
	n = num.to_i
	is_negative = false
	add_comma = false
	words = " "

	if (n < 0)
		is_negative = true
		n = n.abs()
	end
	 if (n == 0)
	 	words << "zero"
	 end
	 if (n > 1000000000)
	 	k=n/1000000000
	 	n = n%1000000000
	 	words << smallnums(k) + "billion,"
	 end
	 if (n>1000000)
	 	k=n/1000000
	 	n=n%1000000
	 	words<< smallnums(k) + "million,"

	 end
	 if (n > 1000)
	 	k=n/ 10000
	 	n=n%1000
	 	words<<smallnums(k)+ "thousand,"
	 end
	 words<<smallnums(n) if n>0

	 if (is_negative)
	 	words = "negative" + words
	 end 
	 print words
	end

	def smallnums(n)
		tens= ["", " ", "twenty", "thirty", "fourty", "fifty","sixty","seventy","eighty","ninety"]
		units= ["","one","two","three", "four","five", "six","seven","eight","nine"]
		teens=["ten","eleven", "twelve", "thirteen","fourteen","fifteen","sixteen","seventeen","eighteen","nineteen"]
		words""
		add_add = false
		factors = 0
			if (n>100)
				factors = n/100
				n = n %100
				words<<units[factors]<<" hundred"
				add_add = true if n>0
			end
			if(n>=20)
				factors=n/10
				n=n%10
				if (add_add)
					words<< " and "<<tens[factors]
				else
					words<< " "<<tens [factors]
				end
				add_add= false
			end
			if(n>=10 && n<20)
				factors= n%10
				tensteen= true
				words<< " and "<<teens[factors]
				n=0
			end
			if (n>0 && n<10)
				factors = n
				if (add_add)
					words<< " and "<<units[factors]
				else
					words<< " "<<units[factors]
				end 
			end
			return words
		end

		puts "put your digit?"
		x= gets.chomp().to_i

		num_in_words(3000)
