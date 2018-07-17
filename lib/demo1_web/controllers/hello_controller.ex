defmodule Demo1Web.HelloController do
  use Demo1Web, :controller

  def index(conn, _params) do
    redirect conn, external: "https://elixir-lang.org/"
  end
  def  show(conn, %{"messenger" => messenger} = params) do
    render conn, "show.html", messenger: messenger
  end
end
