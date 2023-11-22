# Social Network API - Rails

## What is this repo?

## What are the features?

- **Authentication** : log in, sign up, forget password, edit profile.

## How to use the API from a client?

You can access different routes for different actions:

sign up

sign in

create a post

update a post

delete a post

Example request:

```js
fetch('URL/auth/login', {
  method: POST,
  headers: {
      'Content-type': 'application/json'
  },
  body: {
      username: 'randomUserName',
      password: 'ask^dsk34'
  }
)
```

Example request with JWT:

```js
fetch("URL/me", {
  method: "GET",
  headers: {
    Authorization: `Bearer <token>`,
  },
});
```

## How was it made?

Main resource [here](https://dev.to/mohhossain/a-complete-guide-to-rails-authentication-using-jwt-403p)
