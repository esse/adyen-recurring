# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule AdyenRecurringAPI.Model.TokenService do
  @moduledoc """
  The name of the token service.
  """

  @derive [Poison.Encoder]
  defstruct [
    
  ]

  @type t :: %__MODULE__{
    
  }
end

defimpl Poison.Decoder, for: AdyenRecurringAPI.Model.TokenService do
  def decode(value, _options) do
    value
  end
end

