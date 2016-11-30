defmodule Discuss.TopicView do
  use Discuss.Web, :view

  def timestamp(topic) do
    topic.inserted_at # srsly? I have to use a library to format date time?
  end
end
