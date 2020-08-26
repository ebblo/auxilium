import { Tween } from "jquery";

const test = () => {
window.onload = function() {

  
  TweenMax.from('#navbar-test', 3 ,{
    opacity : 0
  })
  TweenMax.from('#left-card-home',1.5,{
    x:-500,
    autoAlpha : 0,
    ease : Power2.easInOut
  })
  TweenMax.from('#right-card-home',1.5,{
    x:500,
    autoAlpha : 0,
    ease : Power2.easInOut
  })
}
}

export { test };