PROJECT = soap_consumer
DEPS = detergent erlsom sync lager
include erlang.mk

DEBUG_ERLC_OPTS += +debug_info
TEST_ERLC_OPTS += +debug_info

debug: ERLC_OPTS = -D debug_flag
debug: clean app 
	erl -pa ../soap_consumer/ebin ../soap_consumer/deps/*/ebin -config elog5.config \
	-eval "soap_consumer_app:start()"
run: app
	erl -pa ../word_collector/ebin ../word_collector/deps/*/ebin \
	-eval "soap_consumer_app:start()"
