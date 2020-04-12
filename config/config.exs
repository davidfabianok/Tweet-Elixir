use Mix.Config

config :tweet, Tweet.Screduler, jobs: [
  {"* * * *", fn ->
    Tweet.FileRender.get_strings_to_tweet(
      Path.join("#{:code.priv_dir(:tweet)}", "sample.text")
    )
    |> Tweet.TweetServer.tweet
  end}
]
