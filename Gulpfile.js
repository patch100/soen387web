var gulp = require('gulp');
var bower = require('gulp-bower');
var webserver = require('gulp-webserver');

gulp.task('bower', function() {
  return bower({ cwd: 'FRONTEND' });
});

gulp.task('serve', ['bower'], function() {
  return gulp.src('FRONTEND')
    .pipe(webserver({
      livereload: true,
      open: true,
      fallback: 'index.html'
    }));
});
