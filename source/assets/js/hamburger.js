jQuery(function($){
  $( '.site-toggle a' ).click(function(){
    $('.navigation').toggleClass('expand')
  })

  $( '.navigation a' ).click(function(){
    $('.navigation').toggleClass('expand')
  })
})
