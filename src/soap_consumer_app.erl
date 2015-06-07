-module(soap_consumer_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).
-export([start/0,stop/0]).

start(_Type, _Args) ->
    soap_consumer_sup:start_link().

stop(_State) ->
	ok.
start() ->
    application:ensure_all_started(soap_consumer).
stop() ->
    application:stop(soap_consumer).
