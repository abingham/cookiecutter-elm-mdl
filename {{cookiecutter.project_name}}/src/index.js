'use strict';

require("./static/material.min.css");
require("./static/material.min.js");
require("./static/material_icons.css");

// Require index.html so it gets copied to dist
require('./index.html');

var Elm = require('./Main.elm');
var mountNode = document.getElementById('main');

var flags = {
    someEnvVar: process.env.SOME_ENV_VAR
};

setTimeout(function() {
    var app = Elm.{{cookiecutter.module_name}}.embed(mountNode, flags);
});
