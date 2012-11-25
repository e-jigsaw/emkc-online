# grut config
module.exports = (grunt)->
	grunt.initConfig
		pkg: "<json:package.json>"
		coffee:
			self:
				src: ["grunt.coffee"]
				dest: "./"
				options:
					bare: true
		jade:
			index:
				options:
					data:
						debug: false
						pretty: true
				files:
					"index.html": ["index.jade"]

		watch:
			files: ["grunt.coffee", "index.jade"]
			tasks: "coffee jade"

		grunt.loadNpmTasks "grunt-coffee"
		grunt.loadNpmTasks "grunt-contrib"

		grunt.registerTask "default", "watch"