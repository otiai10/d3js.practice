module.exports = (grunt) ->
    grunt.initConfig
        pkg: grunt.file.readJSON 'package.json'
        typescript:
            build:
                src: ['src/**/*.ts']
                dest: 'build/all.js'
    grunt.loadNpmTasks 'grunt-typescript'
    grunt.registerTask 'build', ['typescript:build']
