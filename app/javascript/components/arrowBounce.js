import { Tween } from "jquery";

const arrowBounce = () => { 
  window.onload = function () {

  TweenMax.from('#arrow-anker', 2,{
    y: -50,
    autoAlpha : 0.4,
    repeat: 100
  })
}
}
export { arrowBounce };