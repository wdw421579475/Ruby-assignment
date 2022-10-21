class Compress
	attr_accessor :compressed_words, :indexes
	def initialize(s)
		dict = {}
		cur_id = 0
		@indexes = []
		@compressed_words = []
		#split the string
		words_list = s.split(/\W/)
		#store every new word in a dictionary as key and its index in compressed_words as value
		words_list.each do |w|
			if not dict[w]
				dict[w] = cur_id
				@compressed_words.push(w)
				cur_id += 1
			end
			@indexes.push(dict[w])
		end
	end
    def decompress(compressed_words, indexes)
        @str_list = []
        indexes.each do |num|
            @str_list.push(compressed_words[num])
        end
        return @str_list.join(" ")
    end
end
