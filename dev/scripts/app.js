/*jslint browser, es6 */
/*global window */

window.onload = function() {
  const CSSPreProcessor = `Sass`;
  const JSVersion = `ES6`;

  let body = document.querySelector(`body`);
  let paragraph = document.createElement(`p`);
  let text = document.createTextNode(
    `If you can see this content in blue with ` +
      `a light blue border, then ${CSSPreProcessor} and ${JSVersion} are ` +
      `working. Look at the “dev” folder for placing your HTML, Sass, and ` +
      `JavaScript.`
  );

  paragraph.appendChild(text);
  body.appendChild(paragraph);
};

$(document).ready(function() {
  try {
    $("body").ripples({
      resolution: 512,
      dropRadius: 20, //px
      perturbance: 0.04
    });
    $("main").ripples({
      resolution: 128,
      dropRadius: 10, //px
      perturbance: 0.04,
      interactive: false
    });
  } catch (e) {
    $(".error")
      .show()
      .text(e);
  }

  $(".js-ripples-disable").on("click", function() {
    $("body, main").ripples("destroy");
    $(this).hide();
  });

  $(".js-ripples-play").on("click", function() {
    $("body, main").ripples("play");
  });

  $(".js-ripples-pause").on("click", function() {
    $("body, main").ripples("pause");
  });

  // Automatic drops
  setInterval(function() {
    var $el = $("main");
    var x = Math.random() * $el.outerWidth();
    var y = Math.random() * $el.outerHeight();
    var dropRadius = 20;
    var strength = 0.04 + Math.random() * 0.04;

    $el.ripples("drop", x, y, dropRadius, strength);
  }, 400);
});
