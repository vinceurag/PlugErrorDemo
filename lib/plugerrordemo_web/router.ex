defmodule PlugerrordemoWeb.Router do
  use PlugerrordemoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PlugerrordemoWeb do
    pipe_through :api

    post "/demo", Demo, :create
  end
end
