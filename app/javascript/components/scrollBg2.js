import { Tween } from "jquery";

const scrollBg2 = () => {
  const controller = new ScrollMagic.Controller();

  $('.projet').each(function(){
      let titleBg2 = $(this).find('.titleBg2');
      let leftCardHome = $(this).find('#left-card-home');
      let centerCardHome = $(this).find('#center-card-home');
      let rightCardHome = $(this).find('#right-card-home');

  
      let TL = new TimelineMax();
  
      // to, fromto, from
  
      TL
      .from(titleBg2, 1, {autoAlpha: 0, y: -30, ease: Power1.easeOut})
      .from(leftCardHome, 1, {duration: 3, ease: "back.out(1.7)", x: 500, autoAlpha : 0})
      .from(centerCardHome, 1, {duration: 3, ease: "back.out(1.7)", x: 500, autoAlpha : 0})
      .from(rightCardHome, 1, {duration: 3, ease: "back.out(1.7)", x: 500, autoAlpha : 0})
      let scene = new ScrollMagic.Scene({
          triggerElement: this
      })
      // .addIndicators()
      .setTween(TL)
      .reverse(true)
      .addTo(controller);
  
      
  
  })
}

export { scrollBg2 };