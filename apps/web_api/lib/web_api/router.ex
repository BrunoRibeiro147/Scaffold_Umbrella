defmodule WebAPI.Router do
  use WebAPI, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WebAPI do
    pipe_through :api
  end
end
