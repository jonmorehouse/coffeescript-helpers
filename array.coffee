"
	Create a place to store all special array methods
"
module.exports = ->

	# grab the last element from an array in coffeecsript 
	Array::last = -> @[@length - 1]

