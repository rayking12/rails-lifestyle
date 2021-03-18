# VetroMovies App

> VetroMovies is the most popular web app to write - read articles about the latest shows. Simply log in to your account and start exploring.  This project consists of a simple sessions system with login and sign-up functionalities. You'll be redirected to the homepage where all categories will be displayed together with the most recent article written in that category. You can click the category section to browse all articles inside a single category. I also implemented a voting system for the articles where the user can vote just once for each article.


## Features

- User can log in only using the username
- User sees the homepage where the first row is the most voted article followed by all categories - listed with the most recent article's image and title
- Only logged in user can submit an article
- When the user clicks on a category inside the homepage, they can see all articles in that category
- Users can vote only once for each article.
- Users can see the full description of an article [EXTRA Feature]

## Built With

- Ruby v2.7.2
- Ruby on Rails v6.1.0

## Live Demo

Check the live version demo [here](https://lit-everglades-38109.herokuapp.com/)

## Presentation Video
Check out the presentation video[here](https://www.loom.com/share/b6dc103527644719b63b243d3af90dd1)


# Homepage
![VetroMovies homepage](/public/vetromovies.png)

# Article's Page
![VetroMovies articles](/public/article.png)

### Prerequisites

Ruby: 2.7.2
Rails: 6.1.0
Postgres: >=9.5

### Setup

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rspec --format documentation
```

> Tests will be added by Microverse students. There are no tests for initial features in order to make sure that students write all tests from scratch.

## Author

👤 **Ray King**

- GitHub [rayKing12](GitHub.com/rayking12)
- Linkedin: [Ray King](https://www.linkedin.com/in/king-ray-514b89133/)

## Credits

Thanks to [Nelson Sakwa](https://www.behance.net/sakwadesignstudio) for her awesome design work. I based my work on  [this](https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version) design.

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!
