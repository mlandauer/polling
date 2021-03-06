###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

[false, true].each do |enough|
  proxy "/polls/1/enough/#{enough}.html",
        '/polls/1/index.html',
        locals: { enough: enough },
        ignore: true

  (1..5).each do |no|
    next_url = no == 5 ? "/polls/1/intro_demographic/enough/#{enough}.html" : "/polls/1/questions/#{no+1}/enough/#{enough}.html"
    proxy "/polls/1/questions/#{no}/enough/#{enough}.html",
          '/question.html',
          locals: { no: no, total: 5, next_url: next_url },
          ignore: true
  end

  proxy "/polls/1/intro_demographic/enough/#{enough}.html",
        '/polls/1/intro_demographic.html',
        locals: { enough: enough },
        ignore: true

  (6..8).each do |no|
    proxy "/polls/1/questions/#{no}/enough/#{enough}.html",
          "/polls/1/questions/#{no}.html",
          locals: { enough: enough },
          ignore: true
  end

  [false, true].each do |demographics|
    proxy "/polls/1/results/demographics/#{demographics}/enough/#{enough}.html",
          '/polls/1/results.html',
          locals: { demographics: demographics, enough: enough },
          ignore: true
  end
end

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload, host: '192.168.1.105'
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # If the repository is called polling and pushed to github to use github pages
  # then we need this prefix. If you've used a different name you'll need
  # to change this
  set :http_prefix, '/polling'
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end
