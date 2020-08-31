import { Tween } from "jquery";

const navbarLink = () => { 
  window.onload = function () {
  let tl = new TimelineMax();

  // tl.staggerFrom('.stagger-link', 0.2, {autoAlpha:0}, 0.2)
  //tl.staggerFrom('.stagger-link', 1, {opacity:0, ease: Back.easeOut.config(1.7)}, 0.2, "-=0.5")
  tl.staggerFrom('.stagger-link', 0.5, {y: -50, opacity:0}, 0.3);
}
}
export { navbarLink };