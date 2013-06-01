require "./spec_helper"
should = require "should"

describe "Object", ->
	describe "Extend", ->

		it "Should have an extend function", ->

			Object.extend.should.not.be.undefined	

		it "Should return an object from the extend function", ->

			data = 
				firstName: "Jon"

			extendedData = data.extend 
				lastName: "Morehouse"

			should.exist extendedData