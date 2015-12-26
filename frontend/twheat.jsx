var React = require('react');
var ReactDOM = require('react-dom');
var Map = require('./components/map');

document.addEventListener("DOMContentLoaded", function() {
  ReactDOM.render(
    <Map></Map>,
    document.getElementById('content')
  );
});
