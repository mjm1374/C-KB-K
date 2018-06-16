module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
//    pkg: grunt.file.readJSON('package.json'),
    uglify: {
      options: {
        banner: '/*! Grunt Uglify <%= grunt.template.today("yyyy-mm-dd") %> */ '
      },
      build: {
        src: 'js/bundle.js',
        dest: 'js/bundle.min.js'
      }
    },
    browserify: {
      build: {
        src: 'js/main.js',
        dest: 'js/bundle.js'
      }
    }
    
  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-uglify');
  
  grunt.loadNpmTasks('grunt-browserify');

  // Default task(s).
  grunt.registerTask('default', [
  'browserify',
  'uglify'
  ]);

};