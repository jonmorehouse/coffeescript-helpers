"
	Initialize coffeescript methods here that extend primitives
	These should be fast!

"
module.exports = ->

	##################### ARRAY METHODS ##########################
	# initialize a basic 
	Array::last = -> @[@length - 1]



	########################## STRING METHODS #####################
	# turn a string that is underscored into a camelCased string easily!
	# all words capitalized
	String::pascalCase = ->

		(@.split("_").map (word) -> word[0].toUpperCase() + word[1..-1].toLowerCase()).join ""

	# capitalize each character in a string
	String::capitalize = ->	

		# do a nice one liner from the coffee-script cookbook!
		(@.split(' ').map (word) -> word[0].toUpperCase() + word[1..-1].toLowerCase()).join ' '

	# camelcase a mix -- its a little bit harder than the pascal ...
	String::camelCase = ->

		elements = @.split("_")
		string = elements.reverse().pop()
		string += (elements.map (word) -> word[0].toUpperCase() + word[1..-1].toLowerCase()).join ""

	# grab a string extension
	String::extension = ->		

		@.split(".").last()

	# grab a filename from a string assuming it has an extension!
	String::filename = ->	

		return @.toString() if @.split(".").length < 2

		@.split(".")[0..-2].join "."





