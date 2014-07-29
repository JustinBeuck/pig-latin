require_relative "pig_latin/version.rb"

module PigLatin
	def self.translate(word)
		alpha = ("a".."z").to_a
		vowels = %w[a e i o u]
		consonants = alpha - vowels
		if "y".include?(word[0])
	  	word[1..-1] + "yay" 
		elsif vowels.include?(word[0])
			word + "way"
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) 
			word[2..-1] << ("#{word[0..1]}") + "ay"
		elsif consonants.include?(word[0]) && vowels.include?(word[1]) 
			word[1..-1] << ("#{word[1]}") + "ay"
		else "error!"
	  end
	end
end