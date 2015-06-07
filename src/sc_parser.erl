-module(sc_parser).
-export([location/1]).

location({ok,undefined,[{_,_,{_,[],0,Loc,Message,undefined,undefined}}]})->
    {error,Loc,Message};
location({ok,undefined,[{_,_,{_,[],1,Loc,"Success",Land,Initials}}]}) ->
    {success,Loc,Land,Initials}.
