-module(soap_consumer).
-export([get_location/1,get_location/0]).

%% get location by context
get_location() -> 
    detergent:call("http://www.webservicex.net/geoipservice.asmx?WSDL",
		   "GetGeoIPContext",["127.0.0.1"]).

-spec get_location(string()) -> {error,timeout} | {ok,undefined,[{'p:IsValidEmailResponse',[],atom()}]}.

get_location(IP) ->
    detergent:call("http://www.webservicex.net/geoipservice.asmx?WSDL",
		   "GetGeoIP",[IP]).



    
