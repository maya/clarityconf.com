activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
  config.remove   = false
  config.cascade  = false
  config.inline   = true
  # config.ignore   = ['hacks.css']
end
activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote   = 'git@github.com:jina/clarityconf.com.git'
  deploy.branch   = 'gh-pages'
end
activate :directory_indexes
activate :livereload



compass_config do |config|
  config.output_style     = :expanded
end

Sass::Script::Number.precision = 8



set :css_dir,    'assets/css'
set :images_dir, 'assets/img'
set :js_dir,     'assets/js'



configure :build do
  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
  activate :relative_assets

  compass_config do |config|
    config.output_style = :compressed
  end
end
