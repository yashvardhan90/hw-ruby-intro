# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  if arr.length==0
	  ans=0
  elsif arr.length==1
	  ans=arr[0]
  else
	  ans=sum(arr.max(2))
  end
end

def sum_to_n? arr, n
  for i in (0...arr.length)
	for j in (0...arr.length)
		if arr[j]==n-arr[i] and j!=i
			return true
		end
	end
  end
return false
end

# Part 2

def hello(name)
  'Hello, ' + name
end

def starts_with_consonant? s
	if s.start_with?('.','/','{','}',',','?',';',':','a','e','i','o','u','A','E','I','O','U','1','2','3','4','5','6','7','8','9','0','#','!','@','$','%','^','&','*','(',')') or s.length==0   
		return false
	end
return true
end

def binary_multiple_of_4? s
	if s.size == 0 || s.count('01') != s.size
		return false
	elsif  s.to_i(2) % 4 == 0
		return true
	else
		return false
	end
end

# Part 3

class BookInStock
	attr_accessor :isbn, :price
	def initialize(isbn, price)
		if isbn.to_s.empty? or price<=0
			raise ArgumentError
		end
		@isbn = isbn
		@price = price
	end

	def price_as_string
		    "$%.2f" % price
	end
end
