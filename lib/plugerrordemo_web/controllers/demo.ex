defmodule PlugerrordemoWeb.Demo do
  use PlugerrordemoWeb, :controller

  def create(conn, image_params) do
    IO.inspect image_params

    conn
    |> put_view(PlugerrordemoWeb.ErrorView)
    |> render("404.json", %{image: image_params})
  end
end
