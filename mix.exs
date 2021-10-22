defmodule AdyenRecurringAPI.Mixfile do
  use Mix.Project

  def project do
    [app: :adyen_recurring_api,
     version: "49",
     elixir: "~> 1.6",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     description: "The Recurring APIs allow you to manage and remove your tokens or saved payment details. Tokens should be created with validation during a payment request.  For more information, refer to our [Tokenization documentation](https://docs.adyen.com/online-payments/tokenization). ## Authentication To connect to the Recurring API, you must use your basic authentication credentials. For this, create your web service user, as described in [How to get the WS user password](https://docs.adyen.com/development-resources/api-credentials). Then use its credentials to authenticate your request, for example:  &#x60;&#x60;&#x60; curl -U \&quot;ws@Company.YourCompany\&quot;:\&quot;YourWsPassword\&quot; \\ -H \&quot;Content-Type: application/json\&quot; \\ ... &#x60;&#x60;&#x60; Note that when going live, you need to generate new web service user credentials to access the [live endpoints](https://docs.adyen.com/development-resources/live-endpoints).  ## Versioning Recurring API supports versioning of its endpoints through a version suffix in the endpoint URL. This suffix has the following format: \&quot;vXX\&quot;, where XX is the version number.  For example: &#x60;&#x60;&#x60; https://pal-test.adyen.com/pal/servlet/Recurring/v49/disable &#x60;&#x60;&#x60;",
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.2"},
      {:poison, "~> 3.0"}
    ]
  end

   defp package() do
    [
      name: "adyen_recurring_api",
      files: ~w(lib mix.exs README* LICENSE*),
      licenses: [""]
    ]
  end
end
