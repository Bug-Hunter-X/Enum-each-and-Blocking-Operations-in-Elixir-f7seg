```elixir
list = [1, 2, 3, 4, 5]

# Use Enum.map to process the list asynchronously or concurrently and gather results.
results = Enum.map(list, fn x ->
  if x == 3 do
    Process.sleep(1000)
  end
  {:ok, x}
  # Or you can use Task.async for true concurrency
  #Task.async(fn -> {:ok, x} end)
  #Then use Task.await(results) to await for results
end)

Enum.each(results, fn result -> IO.puts(elem(result,1)) end)
```