# vim: ai:et:sts=2:ts=2:sw=2
require "sugar"
exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  modules:
    definition: false
    wrapper: false
  paths:
    public: "_public/"
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app\/scripts/
        'js/vendor.js': /^(vendor|bower_components)/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: [
          'app/scripts/init.coffee',
        ]
        after: []

    stylesheets:
      joinTo:
        'css/app.css': /app\/styles\/app.styl/
        'test/stylesheets/test.css': /^test/
      order:
        before: []
        after: []

    templates:
      joinTo:
        # 'js/templates.js': /^(app\/partials\/|vendor\/)/
        'index.html': /^app\/index/
        'printers.html': /^app\/printers/
        'audio.html': /^app\/audio/
        'transport.html': /^app\/transport/
        'feed.html': /^app\/feed/
        'cats.html': /^app\/cats/
        'power.html': /^app\/power/

  plugins:
    jade:
      pretty: yes
    stylus:
      includeCss: true