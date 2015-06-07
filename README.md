SOAP CONSUMER
-------------
An example of an erlang application consuming a soap resource using detergent. 

1. Fetch Dependencies
=====================

``
make deps
``

2. Compile
==========

``
make app
``

3. Run
=======
``bash
make run
``

4. Try it out
=============
On the erlang terminal run:

``
soap_consumer:get_location().
``

to consult the origin of an IP address:
soap_consumer:get_location("255.255.255.255")

5. Parse
========
You can parse your result as following:
``
sc_parser:location(Result).
``

where Result is ``Result = soap_consumer:get_location()``


