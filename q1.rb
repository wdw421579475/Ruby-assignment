class String
	def count_word(search_word="")
		# return if no input string
		if self.size == 0
			return "no input string!"
		end
		# create hashtable and split string
		dict = {}
		arr = self.split(/\W+/)
		#fill the hashtable with words
		arr.each do |x|
			if dict[x]
				dict[x]+=1
			else
				dict[x]=1
			end
		end
		#return hashtable if no search word else return the count of the search word
		if search_word == ""
			return dict
		else
			if dict[search_word]
				return dict[search_word]
			else
				print("No match found for '#{search_word}'!\n")
				return 0
			end
		end
	end
end
