def new_roman_numerals(num)
    numstring = num.to_s
	numarray1 = numstring.split(//)
    numarray = Array.new

	ones = numarray1[-1].to_i
	tens = numarray1[-2].to_i
	hundreds = numarray1[-3].to_i
	thousands = numarray1[-4].to_i

	#Ones Place	
	if ones == 4
		numarray.push("I")
		numarray.push("V")
		
    elsif ones >= 5 and ones < 9
        numarray.push("V")
    	for number in 1..(ones%5) 
			numarray.push("I")
		end

	elsif ones == 9
		numarray.push("I")
		numarray.push("X")
	end

	#Tens Place
	if tens == 4
		numarray.push("X")
		numarray.push("L")
		
    elsif tens >= 5 and tens < 9
        numarray.push("L")
    	for number in 1..(tens%5) 
			numarray.push("I")
		end

	elsif tens == 9
		numarray.push("X")
		numarray.push("C")
	end

	#Hundreds Place
	if hundreds == 4
		numarray.push("C")
		numarray.push("D")
		
    elsif hundreds >= 5 and hundreds < 9
        numarray.push("D")
    	for number in 1..(hundreds%5) 
			numarray.push("C")
		end

	elsif hundreds == 9
		numarray.push("C")
		numarray.push("M")
	end

	#Thousands Place

	for number in 1..thousands
		numarray.push("M")
	end

romannum = numarray.reverse
print romannum
end

old_roman_numerals(55)
