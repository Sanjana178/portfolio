//= require rails-ujs
//= require_tree .
var hero = document.querySelector('.hero');
var slider = document.querySelector('.slider');
var logo = document.querySelector('#logo');
var headline = document.querySelector('.headline');
var about = document.querySelector('.about');
var navcontact = document.querySelector('.contact');
var sticky = document.querySelector('.sticky');
var contactbutton = document.querySelector('.contact-button');

var tl = new TimelineMax();

tl.fromTo(hero, 1, {height: "0%"}, {height: "80%", ease: Power2.easeInOut})
  .fromTo(hero, 1.2, {width: "100%"}, {width: "80%", ease: Power2.easeInOut})
  .fromTo(slider, 1.2, {x: "-100%"}, {x: "0%", ease: Power2.easeInOut})
  .fromTo(logo, 0.5, {opacity: 0, x: 30}, {opacity: 1, x: 0}, "-=0.5")
  .fromTo(about, 0.5, {opacity: 0, x: 30}, {opacity: 1, x: 0}, "-=0.5")
  .fromTo(navcontact, 0.5, {opacity: 0, x: 30}, {opacity: 1, x: 0}, "-=0.5")
  .fromTo(headline, 0.5, {opacity: 0, x: 30}, {opacity: 1, x: 0}, "-=0.5")
  .fromTo(contactbutton, 0.5, {opacity: 0, x: 30}, {opacity: 1, x: 0}, "-=0.5")
  .fromTo(sticky, 0.5, {opacity: 0, x: 30}, {opacity: 1, x: 0}, "-=0.5");


$(document).ready(function() {

  var scrollLink = $('.scroll');

  // Smooth scrolling
  scrollLink.click(function(e) {
    e.preventDefault();
    $('body,html').animate({
      scrollTop: $(this.hash).offset().top
    }, 1000 );
  });

  //Active link scrolling
  $(window).scroll(function(){
    var scrollbarLocation = $(this).scrollTop();
    scrollLink.each(function(){

      var sectionOffset = $(this.hash).offset().top;
      console.log(sectionOffset);
      if(sectionOffset <= scrollbarLocation){
        console.log($(this));
        $(this).parent().addClass('active');
        $(this).parent().siblings().removeClass('active');
      }
    })
  })
})

  var aboutLink = $('.about');

  //On click animation
  aboutLink.click(function(e) {
    var tl = new TimelineLite();
    tl.from(".card-info",2,{ x:-100 , opacity:0 , ease: Power2.easeInOut })
    .to(".card-info",2,{ x:05, opacity:0.7 , ease: Power2.easeInOut } ,'-=0.5');
  })

  var contactLink = $('.contact');
  contactLink.click(function(e) {
    var tl = new TimelineLite();
    tl.from(".sc-ckVGcZ",1.5,{ y:-100 , opacity:0 , ease: Power2.easeInOut })
    .to(".sc-ckVGcZ",1.5,{ y:05, opacity:0.7 , ease: Power2.easeInOut } ,'-=0.5');
  })
