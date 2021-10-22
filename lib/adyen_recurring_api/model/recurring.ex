# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule AdyenRecurringAPI.Model.Recurring do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"contract",
    :"recurringDetailName",
    :"recurringExpiry",
    :"recurringFrequency",
    :"tokenService"
  ]

  @type t :: %__MODULE__{
    :"contract" => AdyenRecurringAPI.Model.Contract.t | nil,
    :"recurringDetailName" => String.t | nil,
    :"recurringExpiry" => String.t | nil,
    :"recurringFrequency" => String.t | nil,
    :"tokenService" => AdyenRecurringAPI.Model.TokenService.t | nil
  }
end

defimpl Poison.Decoder, for: AdyenRecurringAPI.Model.Recurring do
  import AdyenRecurringAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"contract", :struct, AdyenRecurringAPI.Model.Contract, options)
    |> deserialize(:"tokenService", :struct, AdyenRecurringAPI.Model.TokenService, options)
  end
end
