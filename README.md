# Jungle

> Ligthouselabs project for ruby on rails as an online shopping platform


**Screen Grabs**

![User Interaction](https://raw.githubusercontent.com/briantran98/jungle/master/docs/gif/user-interaction.gif)


![Admin All Products Page](https://raw.githubusercontent.com/briantran98/jungle/master/docs/Screenshots/Admin_all_products.png)


![Sign Up Page](https://raw.githubusercontent.com/briantran98/jungle/master/docs/Screenshots/Signup.png)


---

### Clone

- Clone this repo to your local machine using `https://github.com/briantran98/jungle`

### Setup

1. Install dependencies
```shell
$ bundle install
```
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Create, load and seed db
```shell
$ bin/rake db:reset
```
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Start the server
```shell
bin/rails s -b 0.0.0.0
```

---

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

---

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
