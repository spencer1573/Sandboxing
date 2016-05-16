var gulp = require('gulp');

var jshint = require('gulp-jshint');

var jscs = require('gulp-jscs');

var jsFiles = ['*.js', 'src/**/*.js'];

// to get gulp to work in the command line you need to remember to 
// install gulp cl tools
// by:
// npm install -g gulp-cli
//
// you are at 6:20 in the video right now
//
gulp.task('style', function() {
    return gulp.src(jsFiles)
        .pipe(jshint())
        .pipe(jshint.reporter('jshint-stylish', {
            verbose: true
        }))
        .pipe(jscs());
})
