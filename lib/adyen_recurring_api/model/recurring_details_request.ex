# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule AdyenRecurringAPI.Model.RecurringDetailsRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"merchantAccount",
    :"recurring",
    :"shopperReference"
  ]

  @type t :: %__MODULE__{
    :"merchantAccount" => String.t,
    :"recurring" => AdyenRecurringAPI.Model.Recurring1.t | nil,
    :"shopperReference" => String.t
  }
end

defimpl Poison.Decoder, for: AdyenRecurringAPI.Model.RecurringDetailsRequest do
  import AdyenRecurringAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"recurring", :struct, AdyenRecurringAPI.Model.Recurring1, options)
  end
end

