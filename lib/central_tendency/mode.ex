defmodule Stats.CentralTendency.Mode do
  alias Stats.Errors
  @doc """
    'Mode' finds out the elements which are repeating most often
  """
  def mode([]), do: Errors.invalid_data_type()
  def mode(nums) when is_list(nums) do
    ranked_map = nums |> Enum.frequencies()

    ranked_map
    |> Map.values()
    |> Enum.max()
    |> mode_func(ranked_map)
  end
  def mode(_), do: Errors.invalid_data_type()


  defp mode_func(1, _ranked_map), do: nil
  defp mode_func(max, ranked_map) do
    ranked_map
    |> Map.filter(fn {_key, value} -> value == max end)
    |> Map.keys()
  end
end
