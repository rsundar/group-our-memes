# Project Group Our Memes

> This project's goal is to build an app for grouping transactions by groups in Ruby on Rails. 

This project allows a user to create meme categories in order to better categorize memes they receive and share. This is a mobile web app.

## Built With

- Ruby 2.7.0,
- Ruby on Rails 6.0.2,
- TailwindCSS

## Live Demo

Check out the project here:
[GroupOurMemes](https://groupourmemes.herokuapp.com/)


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

You should have ruby 2.7.0 and ruby on rails 6.0.2. You need to have git installed on your system in order to clone the repo.

### Setup

Clone the repo with the following command.

```sh
$ git clone https://github.com/rsundar/group-our-memes.git
```

### Install

Run bundle install to install the gems required for the application to function.
```sh
$ bundle install --without production
```

### Usage

To run the project run the following commands:
```sh
$ rails db:migrate
$ rails s -b 0.0.0.0
```
open your web browser and go to ```https://localhost:3000```

### Run tests

To run the tests for the project run the following command:
```sh
$ rpsec --format documentation
```
### Deployment

Before you deploy to heroku you need to delete the `credentials.yml.enc` file and run 
`EDITOR="vi" rails credentials:edit`. Take the long encrypted key out and add it as a 
configuration variable with the key 'SECRET_KEY_BASE' to Heroku in the settings tab. 
Also make the following change to the file and save it:

```
    secret_key_base = <%= ENV['SECRET_KEY_BASE'] %>
```

You need to have the heroku postgres add on installed and the heroku ruby buildpack 
installed. 

Once you have completed the steps above you can deploy to heroku with the command:
``` $git push heroku master ```
If you run into any pre-compilation errors just pre-compile the app locally and then deploy.

Once the application is deployed you need to migrate the database with the following command:
``` $heroku run rails db:migrate ```

## Authors

👤 **Rohan Sundar**

- Github: [@rsundar](https://github.com/rsundar)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- Linkedin: [linkedin](https://linkedin.com/linkedinhandle)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Design idea by Gregoire Vella on Behance

## 📝 License

This project is [MIT](lic.url) licensed.