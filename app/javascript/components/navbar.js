import { Tween } from "jquery";

const test = () => {
window.onload = function() {

  // TweenMax.to('#logo-navbar', 1,{width: 100, height: 100})
  TweenMax.from('#navbar-test', 3 ,{
    opacity : 0,
    ease : Power1.easeOut
  })
}
}

export { test };