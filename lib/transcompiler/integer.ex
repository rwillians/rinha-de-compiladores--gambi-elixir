defmodule Transcompiler.Integer do
  @moduledoc false

  @typedoc false
  @type t :: %Transcompiler.Integer{
          value: integer,
          location: Transcompiler.Location.t()
        }
  defstruct [:value, :location]
end

defimpl Transpilable, for: Transcompiler.Integer do
  def to_elixir_ast(ast, _env), do: ast.value
end
