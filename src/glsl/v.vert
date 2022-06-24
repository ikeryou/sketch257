uniform vec3 colorA;
uniform vec3 colorB;
uniform vec3 colorC;

attribute vec3 rate;

varying vec3 vColor;

void main(){
  vColor = mix(mix(colorA, colorB, rate.x), colorC, rate.y);

  vec3 p = vec3(position.x, position.y, 0.0);
  gl_Position = projectionMatrix * modelViewMatrix * vec4(p, 1.0);
}
