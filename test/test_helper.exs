ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Shakescircuits.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Shakescircuits.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Shakescircuits.Repo)

