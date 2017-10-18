(function() {
  requirejs.config({
    paths: {
      'jquery': '../node_modules/jquery/dist/jquery.min'
    }
  });

  requirejs(['jquery'], function() {
    console.log($);
    return $('body').css('background-color', 'lightgrey');
  });

}).call(this);

//# sourceMappingURL=nomus.js.map
