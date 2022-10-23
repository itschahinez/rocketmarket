# Rocket Market

This is a fun project based on the world of Pokémon and its iconic band of villains, Team Rocket. What would Team Rocket's website look like, if they sold the Pokémon they stole on the Internet? Well, something like this marketplace, where users can:

- see a list of all available Pokémon to purchase
- see the details of each Pokémon
- search for specific Pokémon by name or type
- add Pokémon to their cart
- buy Pokémon and see their purchase history

And website administrators can:
- add Pokémon to buy. For better user experience, the administrator does not need to add a picture manually, as the website automatically finds a picture of that Pokémon.
- remove a Pokémon from the list of Pokémon to buy

For this project, we used:
- CRUD
- a search functionality using Active Record
- Sidekiq to momentarily make a Pokémon unavailable when they are in someone's cart
