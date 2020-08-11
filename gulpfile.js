const gulp = require('gulp');
const sass = require('gulp-sass');
const autoprefixer = require('gulp-autoprefixer');
const sourcemaps = require('gulp-sourcemaps');
const cleanCss = require('gulp-clean-css');
const rename = require('gulp-rename');
const coffee = require('gulp-coffee');
const browserSync = require('browser-sync').create();
const relpace = require('gulp-replace');
const include = require('gulp-include');
const terser = require('gulp-terser');

const packageInfo = require('./package.json');

sass.compiler = require('node-sass');

function hello() {
	console.log('Hello');
}

function styles() {
	return gulp.src('./scss/main.scss')
		.pipe(sourcemaps.init())
		.pipe(sass().on('error', sass.logError))
		.pipe(autoprefixer())
		.pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./css'))
		.pipe(cleanCss())
		.pipe(rename({ suffix: '.min' }))
		.pipe(gulp.dest('./css'))
}

function coffeeScript() {
	return gulp.src('./coffee/main.coffee')
		.pipe(sourcemaps.init())
		.pipe(coffee().on('error', console.log))
		.pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./coffee/components/'))
}

function scripts() {
	return gulp.src('./coffee/components.js')
		.pipe(sourcemaps.init())
		.pipe(include().on('error', console.log))
		.pipe(terser())
		.pipe(rename('main.min.js'))
		.pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./js'))
		.pipe(browserSync.stream())
}

var cbString = packageInfo.version;
function cacheBust() {
	console.log('%cAktualna wersja: ' + cbString + ', ' + packageInfo.description, 'color: lightpink');
	return gulp.src('./utilities/master.xsl')
		.pipe(relpace(/v=(\d+\.*)+/g, 'v=' + cbString))
		.pipe(gulp.dest('./utilities'));
}

function bs() {
	browserSync.init({
		proxy: 'localhost/nomus.gda.pl/'
	});
}

function watchFiles() {
	bs();
	gulp.watch(['./scss/**/*.scss'],
		gulp.series(styles, function reloading(done) {
			browserSync.reload();
			done();
		})
	);
	gulp.watch(['./coffee/**/*.coffee'],
		gulp.series(coffeeScript, scripts)
	);
	gulp.watch(['pages/*.xsl', 'utilities/*.xsl'],
		gulp.series(function reloading(done) {
			browserSync.reload();
			done();
		})
	);
}

exports.cacheBust = cacheBust;
exports.default = gulp.series(
	coffeeScript,
	gulp.parallel(styles, scripts, cacheBust),
	watchFiles
);
