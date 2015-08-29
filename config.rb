activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
  config.remove   = false
  config.cascade  = false
  config.inline   = true
  config.ignore   = ['hacks.css']
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.remote   = 'git@github.com:jina/clarityconf.com.git'
  deploy.branch   = 'gh-pages'
end

activate :directory_indexes

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes



# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end



# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }



set :css_dir,    'assets/css'
set :images_dir, 'assets/img'
set :js_dir,     'assets/js'



# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
