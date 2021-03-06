defmodule BuddyMatchingWeb.Router do
  use BuddyMatchingWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", BuddyMatchingWeb do
    pipe_through(:api)

    get("/summoner/:region/:name", SummonerController, :show)
    get("/auth/request", AuthController, :show)
  end
end
