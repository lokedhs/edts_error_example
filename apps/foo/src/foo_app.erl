-module(foo_app).
-behaviour(application).
-export([start/2, stop/1]).

start(_Type, _Args) ->
    foo:run_app().

stop(_) ->
    ok.
