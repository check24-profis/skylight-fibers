# Skylight & Fibers

A dummy app for trying to get the [Skylight agent] to work nicely with the
[fiber-based batching API] of GraphQL Ruby.

It uses a [patched version] of the agent that replaces the usage of
thread-local & fiber-local variables (`Thread#[]` & `Thread#[]=`) with
thread-local only variables (`Thread#thread_variable_get` & `Thread#thread_variable_set`).

Install all dependencies with `bin/setup` and then run `rails db:seed` to fill
the database with test data.

You'll need to create a Skylight application and create a `.env` file with
the `SKYLIGHT_AUTHENTICATION` token of the app.

Now you can start the server with `rails s` and use the `rails generate_calls`
rake task to make requests against the GraphQL endpoint. The task will keep
making requests until you cancel it.

[Skylight agent]: https://github.com/skylightio/skylight-ruby
[fiber-based batching API]: https://graphql-ruby.org/dataloader/overview.html
[patched version]: https://github.com/check24-profis/skylight-ruby/commit/abe07290bcbca1b2c13c8dba17d539e40ba929a9
