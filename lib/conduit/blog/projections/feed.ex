defmodule Conduit.Blog.Projections.Feed do
  use Ecto.Schema

  @primary_key false
  @timestamps_opts [type: :naive_datetime_usec]
  schema "blog_feed_articles" do
    field(:article_uuid, :binary_id, primary_key: true)
    field(:follower_uuid, :binary_id, primary_key: true)
    field(:author_uuid, :binary_id)
    field(:published_at, :naive_datetime_usec)

    timestamps()
  end
end
