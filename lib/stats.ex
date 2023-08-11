defmodule Stats do
  alias Stats.CentralTendency.Mode
  alias Stats.CentralTendency.Mean
  alias Stats.CentralTendency.Median

  defdelegate population_mean(nums), to: Mean
  defdelegate sample_mean(nums), to: Mean
  defdelegate median(num_list), to: Median

  defdelegate mode(nums_list), to: Mode
end
