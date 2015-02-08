# Generated on 2015-02-08 using generator-bower 0.0.1
'use strict'

mountFolder = (connect, dir) ->
  connect.static require('path').resolve(dir)

module.exports = (grunt) ->
  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks)

  yeomanConfig =
    src: 'src'
    dist : 'dist'
  grunt.initConfig
    yeoman: yeomanConfig
    concat:
      build:
        src: [
          '<%=yeoman.src %>/grid.js'
          '<%=yeoman.src %>/version.js'
          '<%=yeoman.src %>/detector.js'
          '<%=yeoman.src %>/formatinf.js'
          '<%=yeoman.src %>/errorlevel.js'
          '<%=yeoman.src %>/bitmat.js'
          '<%=yeoman.src %>/datablock.js'
          '<%=yeoman.src %>/bmparser.js'
          '<%=yeoman.src %>/datamask.js'
          '<%=yeoman.src %>/rsdecoder.js'
          '<%=yeoman.src %>/gf256poly.js'
          '<%=yeoman.src %>/gf256.js'
          '<%=yeoman.src %>/decoder.js'
          '<%=yeoman.src %>/qrcode.js'
          '<%=yeoman.src %>/findpat.js'
          '<%=yeoman.src %>/alignpat.js'
          '<%=yeoman.src %>/databr.js'
        ]
        dest: '<%=yeoman.dist %>/jsqrcode.js'
    uglify:
      build:
        src: '<%= yeoman.dist %>/jsqrcode.js'
        dest: '<%=yeoman.dist %>/jsqrcode.min.js'
        options:
          mangle: false
    grunt.registerTask 'default', [
      'concat',
      'uglify'
    ]
