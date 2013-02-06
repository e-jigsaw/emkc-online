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
			debug:
				options:
					pretty: true
					data:
						debug: true
				files:
					"index.html": "index.jade"
					"backnumber": "backnumber.jade"
					"ads.html": "ads.jade"
					"articles.html": "articles.jade"
			release:
				options:
					pretty: true
					data:
						debug: false
				files:
					"/var/www/index.html": "index.jade"
					"/var/www/backnumber": "backnumber.jade"
					"/var/www/ads.html": "ads.jade"
					"/var/www/articles.html": "articles.jade"

		watch:
			files: ["*.jade"]
			tasks: "coffee jade"

		grunt.loadNpmTasks "grunt-coffee"
		grunt.loadNpmTasks "grunt-contrib"

		grunt.registerTask "default", "watch"