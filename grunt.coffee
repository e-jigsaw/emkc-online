# grut config
module.exports = (grunt)->
	grunt.initConfig
		pkg: "<json:package.json>"
		coffee:
			self:
				files:
					"grunt.js": ["grunt.coffee"]
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
			backnumber:
				options:
					data:
						debug: false
						pretty: true
				files:
					"backnumber.html": ["backnumber.jade"]
			ads:
				options:
					data:
						debug: false
						pretty: true
				files:
					"ads.html": ["ads.jade"]
			articles:
				options:
					data:
						debug: false
						pretty: true
				files:
					"articles.html": ["articles.jade"]

		watch:
			files: ["grunt.coffee", "*.jade"]
			tasks: "coffee jade"

		grunt.loadNpmTasks "grunt-coffee"
		grunt.loadNpmTasks "grunt-contrib"

		grunt.registerTask "default", "watch"