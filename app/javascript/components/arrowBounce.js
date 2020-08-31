import { Tween } from "jquery";

const arrowBounce = () => { 
  window.onload = function () {

  TweenMax.from('#arrow-anchor', 2,{
    y: -50,
    autoAlpha : 0.4,
    repeat: 10
  })
}
}
export { arrowBounce };