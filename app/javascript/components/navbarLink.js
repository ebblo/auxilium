import { Tween } from "jquery";

const navbarLink = () => { 
  window.onload = function () {
  let tl = new TimelineMax();

  tl.staggerFrom('.stagger-link', 0.5, {y: -50, opacity:0}, 0.3);
}
}
export { navbarLink };
