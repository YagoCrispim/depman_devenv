-- ALWAYS AT THE TOP
require 'src._config'
require 'depman.init'

local fn_one = require 'package_one.main'
local fn_two = require 'package_two.main'
local fn_three = require 'package_three.main'

fn_one()
fn_two()
fn_three()

