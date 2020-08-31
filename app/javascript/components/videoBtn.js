import { Tween } from "jquery";

const videoBtn = () => { 
  window.onload = function () {
  let tl = new TimelineMax({repeat: 1, yoyo: true});
  
  tl.from('#video-call', 5, {duration: 2.5, ease: "power1.in", autoAlpha : 0})

  tl.yoyo(true).repeat(100).timeScale(2).play(0.5);
  // tl.reverse(0);
  // // tl.repeat(10);
  
  document.getElementById('video-call').addEventListener('load', function(){
    tl.yoyo();
  })
  // document.getElementById('video-call').addEventListener('load', function(){
  //   tl.reverse();
  // })
  // document.getElementById('video-call').addEventListener('load', function(){
  //   tl.repeat();
  // })
  

}
}
export { videoBtn };
