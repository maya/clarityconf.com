clarityconf.com
===============

1. In your projects folder, clone this repo: `git clone git@github.com:jina/clarityconf.com.git`
2. Run `cd clarityconf.com`
3. Run `gem install bundler`.
4. Run `bundle install`.
5. Run `middleman server`.
6. If you want to see locally that the site built okay, type `middleman build` to see the static site it generates.
7. To deploy to public site (clarityconf.com) type `middleman deploy --build-before`.

Resources:
* [Middleman](https://middlemanapp.com/) -- the static site generator we use.
* [Sass](http://sass-lang.com) -- CSS preprocessor

Directories:
* `/source` -- source files
* `/data` -- data stored as yaml or json
* `/helpers` -- where you can store ruby helpers
* `/build` -- the built files you get after running `middleman build`
