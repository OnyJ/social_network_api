# Social Network API - Rails

## What is this repo?

## What are the features?

- **Authentication** : log in, sign up, forget password, edit profile.

## How to use the API from a client?

### Here are the possible requests

You can access different routes for different actions:

sign up : `http://localhost:3000/users`

```json
{
  "username": "Coucou",
  "password": "123456"
}
```

log in : `http://localhost:3000/auth/login`

```json
{
  "username": "Coucou",
  "password": "123456"
}
```

create a post

update a post

delete a post

### Some examples on how to run requests with JS

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

Logging out has to be handled by the frontend website. You have to delete the token from the local storage.

```js
fetch("http://localhost:3000/auth/login/", {
      method: "POST",
      headers: {
        "Content-type": "application/json",
      },
      body: JSON.stringify({
        username: username,
        password: password,
      }),
    })
    .then((res) => res.json())
    .then((data) => {
      localStorage.setItem("jwt", data.jwt);
    })
```

## How was it made?

Main resource [here](https://dev.to/mohhossain/a-complete-guide-to-rails-authentication-using-jwt-403p)
