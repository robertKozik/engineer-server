defmodule Server.Module do
  use Ecto.Schema
  import Ecto.Changeset

  schema "modules" do
    field :name, :string
    field :serial_id, :string

    timestamps()
  end

  @doc false
  def changeset(module, attrs) do
    module
    |> cast(attrs, [:name, :serial_id])
    |> validate_required([:name, :serial_id])
  end
end
