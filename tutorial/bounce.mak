<%namespace name="head" file="head.mak" />
${head.head(190)}
	   <textarea id="library" style="display: none">
var x = 150;
var y = 150;
var dx = 2;
var dy = 4;
var ctx;
var WIDTH = $("canvas").width()
var HEIGHT = $("canvas").height()

function circle(x,y,r) {
  ctx.beginPath();
  ctx.arc(x, y, r, 0, Math.PI*2, true);
  ctx.closePath();
  ctx.fill();
}

function rect(x,y,w,h) {
  ctx.beginPath();
  ctx.rect(x,y,w,h);
  ctx.closePath();
  ctx.fill();
}

function clear() {
  ctx.clearRect(0, 0, WIDTH, HEIGHT);
}

function init() {
  ctx = $('#canvas')[0].getContext("2d");
  return setInterval(draw, 10);
}
       </textarea>
	<div id="explain">Our ball can fly! But it runs away too quickly; let's
	contain it in our box by rebounding off the walls.
	<div id="codebox">
       <textarea id="code" rows=10 cols=50>function draw() {
  clear();
  circle(x, y, 10);
 
  if (x + dx > WIDTH || x + dx < 0)
	  dx = -dx;
  if (y + dy > HEIGHT || y + dy < 0)
	  dy = -dy;
 
  x += dx;
  y += dy;
}

init();</textarea>
		</div>
		<input type="submit" value="run code" onclick="runCode()"/><br>
		<p>
        Try to change the draw() function so that the ball accelerates or decelerates
        every time it hits a wall.
	</div>

${head.next('paddle.html')}
