module.exports = (grunt) ->

	grunt.initConfig
		"jasmine-node": 

			options: 
				coffee: true

			run:
				spec: "spec"

	grunt.loadNpmTasks 'grunt-contrib-jasmine-node'
	grunt.registerTask 'default', ['jasmine-node']
