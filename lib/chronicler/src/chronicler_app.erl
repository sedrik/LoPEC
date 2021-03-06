%%%-------------------------------------------------------------------
%%% @private
%%% @author Fredrik Andersson <sedrik@consbox.se>
%%% @copyright (C) 2009, Clusterbusters
%%% @doc The logger client is responsible for all the logging in the system.
%%% @end
%%% Created : 29 Sep 2009 by Fredrik Andersson <sedrik@consbox.se>
%%%-------------------------------------------------------------------
-module(chronicler_app).
-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%--------------------------------------------------------------------
%% @doc
%% This function is called whenever an application is started using
%% application:start/[1,2], and should start the processes of the
%% application. If the application is structured according to the OTP
%% design principles as a supervision tree, this means starting the
%% top supervisor of the tree.
%%
%% @spec start(StartType, StartArgs) -> {ok, Pid} |
%%                                      ignore |
%%                                      {error, Reason}
%%      StartType = normal | {takeover, Node} | {failover, Node}
%%      StartArgs = term()
%% @end
%%--------------------------------------------------------------------
start(_Type, _Args) ->
    chronicler_sup:start_link().

%%--------------------------------------------------------------------
%% @doc
%% This function is called whenever an application has stopped. It
%% is intended to be the opposite of Module:start/2 and should do
%% any necessary cleaning up. The return value is ignored.
%%
%% @spec stop(State) -> void()
%% @end
%%--------------------------------------------------------------------
stop(_State) ->
    ok.
