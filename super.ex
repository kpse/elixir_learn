import Supervisor.Spec

children = [
  supervisor(TCP.Pool, []),
  worker(TCP.Acceptor, [4040])
]

Supervisor.start_link(children, strategy: :one_for_one)
