# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule AdyenRecurringAPI.Model.RecurringDetail do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"additionalData",
    :"alias",
    :"aliasType",
    :"bank",
    :"billingAddress",
    :"card",
    :"contractTypes",
    :"creationDate",
    :"firstPspReference",
    :"name",
    :"paymentMethodVariant",
    :"recurringDetailReference",
    :"shopperName",
    :"socialSecurityNumber",
    :"variant"
  ]

  @type t :: %__MODULE__{
    :"additionalData" => %{optional(String.t) => String.t} | nil,
    :"alias" => String.t | nil,
    :"aliasType" => String.t | nil,
    :"bank" => AdyenRecurringAPI.Model.BankAccount1.t | nil,
    :"billingAddress" => AdyenRecurringAPI.Model.Address1.t | nil,
    :"card" => AdyenRecurringAPI.Model.Card1.t | nil,
    :"contractTypes" => [String.t] | nil,
    :"creationDate" => String.t | nil,
    :"firstPspReference" => String.t | nil,
    :"name" => String.t | nil,
    :"paymentMethodVariant" => String.t | nil,
    :"recurringDetailReference" => String.t,
    :"shopperName" => AdyenRecurringAPI.Model.Name1.t | nil,
    :"socialSecurityNumber" => String.t | nil,
    :"variant" => String.t
  }
end

defimpl Poison.Decoder, for: AdyenRecurringAPI.Model.RecurringDetail do
  import AdyenRecurringAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"bank", :struct, AdyenRecurringAPI.Model.BankAccount1, options)
    |> deserialize(:"billingAddress", :struct, AdyenRecurringAPI.Model.Address1, options)
    |> deserialize(:"card", :struct, AdyenRecurringAPI.Model.Card1, options)
    |> deserialize(:"shopperName", :struct, AdyenRecurringAPI.Model.Name1, options)
  end
end

