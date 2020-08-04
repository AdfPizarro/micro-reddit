# Building With Active Records

  This project is to practice how to build with active records. It involves building a small application called micro-reddit. Here, we apply our knowledge in designing tables and their relationship to create an application where a user can create post and add a comment to it.

## Features Of This Game

- User can create a post
- User can add comment to his post.
- Cooments and posts are stored in the database.

## How to Test the Project

Get a local copy of the file  clone with HTTPS 

```
https://github.com/AdfPizarro/micro-reddit    
```

Migrate the database with the following command
```
bin/rake db:migrate
```

Run the seed to populate the database
```
bin/rails db:seed
```

Now you can check the relationships between the elements in the db 
```
bin/rails console
u2 = User.find(2)
c1 = u2.comments.first
```
Should return that user’s comment. #comments returns an array with comments, which is why we need to use #first to actually retrieve the comment itself.
```
c1.user
```
Should return that comment’s author User (u2).
```
p1 = Post.first
p1.comments.first
```
Should return the comment c1.
```
c1.post
```
Should return the post p1.

Or create your own elements

You can create users with the following command

```
User.create(username: "Jhon Doe", email: "example@example.com", password: "password")
```

Create posts (you need to select a valid user_id, for testing could be 1 or 2)
```
Post.create(title: "My first post", body: "Post content example", user_id: 1)
```

And create comments (you need to select a valid user_id and a valid post_id, for testing could be 1 or 2)
```
Comment.create(content: "Comment example", user_id: 1, post_id: 1)
```

## Built With
- Ruby 
- Rails

## Authors

👤 **Adrian Flores Pizarro**
- Github: [@AdfPizarro](https://github.com/AdfPizarro)
- Twitter: [@AdfPizarro](https://twitter.com/adfpizarro)
- Linkedin: [adrian-flores-pizarro-73b62316a](https://www.linkedin.com/in/adrian-flores-pizarro-73b62316a/)

👤 **Nnamdi Emelu**
- Github: [@githubhandle](https://github.com/zubenna)
- Twitter: [@twitterhandle](https://twitter.com/zubenna)
- Linkedin: [linkedin](https://linkedin.com/in/nnamdi-emelu-08b14340/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/AdfPizarro/micro-reddit/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Project originally taken from The Odin Project
- Project inspired by Microverse Program

