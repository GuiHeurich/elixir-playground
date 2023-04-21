import Config

config :kv, :routing_table, [{?a..?z, node()}]

if config_env() == :prod do
  config :kv, :routing_table,  [
    {?a..?m, :"foo@MC-N396803"},
    {?n..?z, :"bar@MC-N396803"}
  ]
end
