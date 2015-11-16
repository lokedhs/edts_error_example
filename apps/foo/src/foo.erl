-module(foo).
-export([run_app/0]).
-include_lib("amqp_client/include/amqp_client.hrl").

run_app() ->
    amqp_connection:start( #amqp_params_network{} ),
    print_with_interval().

print_with_interval() ->
    io:format("test~n"),
    timer:sleep(1000),
    print_with_interval().
