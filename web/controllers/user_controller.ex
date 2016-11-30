defmodule Discuss.UserController do
  use Discuss.Web, :controller

  alias Discuss.User

  plug Discuss.Plugs.RequireAuth

  def show(conn, %{"id" => id}) do
    user = Repo.get!(User, id) |> Repo.preload(topics: [:user])
    render(conn, "show.html", user: user)
  end
end
