# AdyenRecurringAPI

The Recurring APIs allow you to manage and remove your tokens or saved payment details. Tokens should be created with validation during a payment request.  For more information, refer to our [Tokenization documentation](https://docs.adyen.com/online-payments/tokenization). ## Authentication To connect to the Recurring API, you must use your basic authentication credentials. For this, create your web service user, as described in [How to get the WS user password](https://docs.adyen.com/development-resources/api-credentials). Then use its credentials to authenticate your request, for example:  &#x60;&#x60;&#x60; curl -U \&quot;ws@Company.YourCompany\&quot;:\&quot;YourWsPassword\&quot; \\ -H \&quot;Content-Type: application/json\&quot; \\ ... &#x60;&#x60;&#x60; Note that when going live, you need to generate new web service user credentials to access the [live endpoints](https://docs.adyen.com/development-resources/live-endpoints).  ## Versioning Recurring API supports versioning of its endpoints through a version suffix in the endpoint URL. This suffix has the following format: \&quot;vXX\&quot;, where XX is the version number.  For example: &#x60;&#x60;&#x60; https://pal-test.adyen.com/pal/servlet/Recurring/v49/disable &#x60;&#x60;&#x60;

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `adyen_recurring_api` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:adyen_recurring_api, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/adyen_recurring_api](https://hexdocs.pm/adyen_recurring_api).
