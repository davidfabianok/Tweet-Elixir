defmodule Tweet.FileRender do
  def get_strings_to_tweet(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 140)
    |> Enum.random()
    #|> Enum.filter(fn string -> String.length(string) <= 140 end)

  end
end
