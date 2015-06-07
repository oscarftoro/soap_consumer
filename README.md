SOAP CONSUMER
-------------
An example of an erlang application consuming a soap resource using detergent. 

1. Fetch Dependencies
=====================

´´bash
make deps
´´

2. Compile
==========

´´bash
make app
´´

3. Run
=======
´´bash
make run
´´

On the erlang terminal run:

´´erlang
soap_consumer:get_location().
´´

to consult the origin of an IP address:
soap_consumer:get_location("255.255.255.255")

You can parse your result as following:
´´erlang
sc_parser:location(Result).
´´

where Result is ´´Result =soap_consumer:get_location()´´


