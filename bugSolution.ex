```elixir
list = [1, 2, 3, 4, 5]

result = try do
  Enum.reduce(list, 0, fn x, acc ->
    if x == 3 do
      throw(:three_found)
    else
      acc + x
    end
  end)
rescue
  :three_found -> 0  # Handle the exception and return a default value
  _ -> :error  #Handle other potential errors
end

IO.puts(result)  # Output: 0
```