defmodule IntegratorWeb.UserView do
  use IntegratorWeb, :view
  alias IntegratorWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      sf_id: user.sf_id,
      first_name: user.first_name,
      last_name: user.last_name,
      company_name: user.company_name}
  end
end
