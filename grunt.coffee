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
					pretty: true
					data:
						debug: false
				files:
					"index.html": ["index.jade"]
			backnumber:
				options:
					pretty: true
					data:
						debug: false
				files:
					"backnumber.html": ["backnumber.jade"]
			ads:
				options:
					pretty: true
					data:
						debug: false
				files:
					"ads.html": ["ads.jade"]
			articles:
				options:
					pretty: true
					data:
						debug: false
				files:
					"articles.html": ["articles.jade"]

		watch:
			files: ["*.jade"]
			tasks: "coffee jade"

		grunt.loadNpmTasks "grunt-coffee"
		grunt.loadNpmTasks "grunt-contrib"

		grunt.registerTask "default", "watch"