var gulp = require('gulp')
,   concat = require('gulp-concat')
,   sass = require('gulp-sass')
// ,   annotate = require('gulp-ng-annotate')
,   sourcemaps = require('gulp-sourcemaps')
// ,   CacheBuster = require('gulp-cachebust')
,   uglify = require('gulp-uglify')
,   rename = require('gulp-rename')
,   cssmin = require('gulp-cssmin')
,   htmlmin = require('gulp-htmlmin');

// var cachebust = new CacheBuster();

var paths = {
    // jsSource: ['./public/js/**/*.js'],
    cssSource: ['./styles/**/*.css']
    // indexSource: ['./public/index.html'],
    // viewsSource: ['./public/views/**/*.html'],
    // imagesSource: ['./images/*']
};

gulp.task('css', function() {
    return gulp.src(paths.cssSource)
        // .pipe(sourcemaps.init())
        // .pipe(sass())
        // .pipe(cachebust.resources())
        .pipe(concat('bundle.css'))
        // .pipe(sourcemaps.write('./maps'))
        .pipe(rename({extname: ".min.css"}))
        .pipe(cssmin())
        .pipe(gulp.dest('./dist'));
});

// gulp.task('js', function() {
//     return gulp.src(paths.jsSource)
//         .pipe(concat('bundle.js'))
//         // .pipe(annotate())
//         // .pipe(uglify())
//         .pipe(rename({extname: ".min.js"}))
//         .pipe(gulp.dest('./dist'));
// });

// gulp.task('views', function() {
//     gulp.src(paths.viewsSource)
//       .pipe(htmlmin({collapseWhitespace: true}))
//       .pipe(gulp.dest("./dist/views"));
// });
//
// gulp.task('index', function() {
//     gulp.src(paths.indexSource)
//       .pipe(htmlmin({collapseWhitespace: true}))
//       .pipe(gulp.dest("./dist"));
// });

// gulp.task('images', function() {
//     gulp.src(paths.imagesSource)
//       .pipe(gulp.dest("./dist/images"));
// });

gulp.task('watch', function() {
    // gulp.watch(paths.jsSource, ['js']);
    gulp.watch(paths.cssSource, ['css']);
    // gulp.watch(paths.indexSource, ['index']);
    // gulp.watch(paths.viewsSource, ['views']);
    // gulp.watch(paths.picturesSource, ['images']);
});

gulp.task('default', ['css', 'watch']);
