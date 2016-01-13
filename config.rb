Time.zone = 'US/Pacific'

compass_config do |config|
  config.output_style = :expanded
end

Sass::Script::Number.precision = 8

activate :automatic_alt_tags
activate :automatic_image_sizes
activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
  config.remove   = false
  config.cascade  = false
  config.inline   = true
  config.ignore   = ['normalize-rails.css', '_html5-boilerplate.css', '_bootstrap.css']
end
activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote   = 'git@github.com:sushiandrobots/clarityconf.com.git'
  deploy.branch   = 'gh-pages'
end
activate :directory_indexes
activate :livereload
activate :syntax
activate :title, site: data.site.title, separator: ' • '

set :css_dir,   'assets/css'
set :fonts_dir, 'assets/fonts'
set :haml, {
 :attr_wrapper => '"',
 :format => :xhtml,
 :ugly => true
}
set :images_dir, 'assets/img'
set :js_dir,     'assets/js'
set :markdown,        :tables => true,
                      :autolink => true,
                      :gh_blockcode => true,
                      :fenced_code_blocks => true,
                      :with_toc_data => true,
                      :smartypants => true
set :markdown_engine, :redcarpet

configure :development do
  set :debug_assets, true
end

configure :build do
  compass_config do |config|
    config.output_style = :compact
    config.line_comments = false
  end

  activate :asset_hash
  activate :cache_buster
  activate :gzip
  activate :minify_css
  activate :minify_html, :remove_input_attributes => false
  activate :minify_javascript
  activate :relative_assets

  set :relative_links,  true
end
