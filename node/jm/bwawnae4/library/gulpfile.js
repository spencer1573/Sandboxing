var gulp = require('gulp');

var jshint = require('gulp-jshint');

var jsFiles = ['*.js', 'src/**/*.js'];

// to get gulp to work in the command line you need to remember to 
// install gulp cl tools
// by:
// npm install -g gulp-cli
gulp.task('style', function() {
    gulp.src(jsFiles)
        .pipe(jshint())
        .pipe(jshint.reporter('jshint-stylish', {
            verbose: true
        }));
})
