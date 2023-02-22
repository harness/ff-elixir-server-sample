# Before you Begin

Harness Feature Flags (FF) is a feature management solution that enables users to change the software’s functionality, without deploying new code. FF uses feature flags to hide code or behaviours without having to ship new versions of the software. A feature flag is like a powerful if statement.

For more information, see https://harness.io/products/feature-flags/

To read more, see https://ngdocs.harness.io/category/vjolt35atg-feature-flags

To sign up, https://app.harness.io/auth/#/signup/

This is a sample app demonstrating Erlang Server SDK integration with CF in an Elixir app.

## Requirements
- Elixir
- Erlang

## To use this application, follow the steps as below ##

1) Create a project in Harness with Feature-flags module enabled
2) Create an environment within your project
3) Create a server-side sdk key in your environment **COPY the value from the Admin Console to your clipboard since this value will only be displayed once**
4) Create a boolean feature-flag in the admin console called `harnessappdemodarkmode`
5) Import the Elixir project in an IDE such as [IntelliJ](https://www.jetbrains.com/idea/)

We are using the Erlang SDK as dependency for this sample program

Install dependencies using [Mix](https://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html)
```shell
mix deps.get
````

In your `config.exs` add your server-side sdk key from `step 3` above.
```Elixir
config :cfclient, api_key: "YOUR_API_KEY"
````

Compile the application
```shell
mix compile
```

Start the Elixir CLI
```shell
iex -S mix
```

Start the loop to print the flag value every 10 seconds
```shell
iex(1)> Elixirsample.getFlagLoop()
```
